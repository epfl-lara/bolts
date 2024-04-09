; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83858 () Bool)

(assert start!83858)

(declare-fun b_free!19639 () Bool)

(declare-fun b_next!19639 () Bool)

(assert (=> start!83858 (= b_free!19639 (not b_next!19639))))

(declare-fun tp!68360 () Bool)

(declare-fun b_and!31385 () Bool)

(assert (=> start!83858 (= tp!68360 b_and!31385)))

(declare-fun mapIsEmpty!35978 () Bool)

(declare-fun mapRes!35978 () Bool)

(assert (=> mapIsEmpty!35978 mapRes!35978))

(declare-fun b!979077 () Bool)

(declare-fun e!551952 () Bool)

(declare-fun tp_is_empty!22633 () Bool)

(assert (=> b!979077 (= e!551952 tp_is_empty!22633)))

(declare-fun b!979078 () Bool)

(declare-fun e!551950 () Bool)

(assert (=> b!979078 (= e!551950 tp_is_empty!22633)))

(declare-fun b!979079 () Bool)

(declare-fun res!655332 () Bool)

(declare-fun e!551953 () Bool)

(assert (=> b!979079 (=> (not res!655332) (not e!551953))))

(declare-datatypes ((array!61279 0))(
  ( (array!61280 (arr!29493 (Array (_ BitVec 32) (_ BitVec 64))) (size!29973 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61279)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61279 (_ BitVec 32)) Bool)

(assert (=> b!979079 (= res!655332 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapNonEmpty!35978 () Bool)

(declare-fun tp!68359 () Bool)

(assert (=> mapNonEmpty!35978 (= mapRes!35978 (and tp!68359 e!551952))))

(declare-datatypes ((V!35161 0))(
  ( (V!35162 (val!11367 Int)) )
))
(declare-datatypes ((ValueCell!10835 0))(
  ( (ValueCellFull!10835 (v!13929 V!35161)) (EmptyCell!10835) )
))
(declare-datatypes ((array!61281 0))(
  ( (array!61282 (arr!29494 (Array (_ BitVec 32) ValueCell!10835)) (size!29974 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61281)

(declare-fun mapKey!35978 () (_ BitVec 32))

(declare-fun mapValue!35978 () ValueCell!10835)

(declare-fun mapRest!35978 () (Array (_ BitVec 32) ValueCell!10835))

(assert (=> mapNonEmpty!35978 (= (arr!29494 _values!1278) (store mapRest!35978 mapKey!35978 mapValue!35978))))

(declare-fun b!979080 () Bool)

(declare-fun e!551951 () Bool)

(assert (=> b!979080 (= e!551953 (not e!551951))))

(declare-fun res!655334 () Bool)

(assert (=> b!979080 (=> res!655334 e!551951)))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!979080 (= res!655334 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29493 _keys!1544) from!1932)))))

(declare-datatypes ((tuple2!14676 0))(
  ( (tuple2!14677 (_1!7348 (_ BitVec 64)) (_2!7348 V!35161)) )
))
(declare-datatypes ((List!20573 0))(
  ( (Nil!20570) (Cons!20569 (h!21731 tuple2!14676) (t!29176 List!20573)) )
))
(declare-datatypes ((ListLongMap!13387 0))(
  ( (ListLongMap!13388 (toList!6709 List!20573)) )
))
(declare-fun lt!434218 () ListLongMap!13387)

(declare-fun lt!434220 () tuple2!14676)

(declare-fun lt!434219 () tuple2!14676)

(declare-fun lt!434216 () ListLongMap!13387)

(declare-fun +!2915 (ListLongMap!13387 tuple2!14676) ListLongMap!13387)

(assert (=> b!979080 (= (+!2915 lt!434216 lt!434219) (+!2915 lt!434218 lt!434220))))

(declare-fun lt!434215 () ListLongMap!13387)

(assert (=> b!979080 (= lt!434218 (+!2915 lt!434215 lt!434219))))

(declare-fun lt!434222 () V!35161)

(assert (=> b!979080 (= lt!434219 (tuple2!14677 (select (arr!29493 _keys!1544) from!1932) lt!434222))))

(assert (=> b!979080 (= lt!434216 (+!2915 lt!434215 lt!434220))))

(declare-fun minValue!1220 () V!35161)

(assert (=> b!979080 (= lt!434220 (tuple2!14677 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32505 0))(
  ( (Unit!32506) )
))
(declare-fun lt!434221 () Unit!32505)

(declare-fun addCommutativeForDiffKeys!577 (ListLongMap!13387 (_ BitVec 64) V!35161 (_ BitVec 64) V!35161) Unit!32505)

(assert (=> b!979080 (= lt!434221 (addCommutativeForDiffKeys!577 lt!434215 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29493 _keys!1544) from!1932) lt!434222))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15296 (ValueCell!10835 V!35161) V!35161)

(declare-fun dynLambda!1751 (Int (_ BitVec 64)) V!35161)

(assert (=> b!979080 (= lt!434222 (get!15296 (select (arr!29494 _values!1278) from!1932) (dynLambda!1751 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!434224 () ListLongMap!13387)

(declare-fun lt!434217 () tuple2!14676)

(assert (=> b!979080 (= lt!434215 (+!2915 lt!434224 lt!434217))))

(declare-fun zeroValue!1220 () V!35161)

(assert (=> b!979080 (= lt!434217 (tuple2!14677 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3376 (array!61279 array!61281 (_ BitVec 32) (_ BitVec 32) V!35161 V!35161 (_ BitVec 32) Int) ListLongMap!13387)

(assert (=> b!979080 (= lt!434224 (getCurrentListMapNoExtraKeys!3376 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!979081 () Bool)

(declare-fun res!655337 () Bool)

(assert (=> b!979081 (=> (not res!655337) (not e!551953))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!979081 (= res!655337 (validKeyInArray!0 (select (arr!29493 _keys!1544) from!1932)))))

(declare-fun b!979082 () Bool)

(declare-fun e!551954 () Bool)

(assert (=> b!979082 (= e!551954 (and e!551950 mapRes!35978))))

(declare-fun condMapEmpty!35978 () Bool)

(declare-fun mapDefault!35978 () ValueCell!10835)

