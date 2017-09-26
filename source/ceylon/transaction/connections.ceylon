import java.sql {
    Connection
}

import javax.sql {
    DataSource,
    XADataSource
}

"Obtain a XA connection source, that is, an instance of
 `Connection()`, for a given JDBC XA [[dataSource]]."
shared Connection newConnectionFromXADataSource
        (XADataSource dataSource)()
        => transactionManager.newConnectionFromXADataSource(dataSource);

"Obtain a connection source, that is, an instance of
 `Connection()`, for a given JDBC XA [[dataSource]], and
 given credentials."
see (`function newConnectionFromXADataSource`)
shared Connection newConnectionFromXADataSourceWithCredentials
        (XADataSource dataSource, String user, String pass)()
        => transactionManager.newConnectionFromXADataSourceWithCredentials(dataSource, [user, pass]);

