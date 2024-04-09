; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83574 () Bool)

(assert start!83574)

(declare-fun b_free!19533 () Bool)

(declare-fun b_next!19533 () Bool)

(assert (=> start!83574 (= b_free!19533 (not b_next!19533))))

(declare-fun tp!67887 () Bool)

(declare-fun b_and!31179 () Bool)

(assert (=> start!83574 (= tp!67887 b_and!31179)))

(declare-fun b!976073 () Bool)

(declare-fun res!653538 () Bool)

(declare-fun e!550106 () Bool)

(assert (=> b!976073 (=> (not res!653538) (not e!550106))))

(declare-datatypes ((array!60889 0))(
  ( (array!60890 (arr!29304 (Array (_ BitVec 32) (_ BitVec 64))) (size!29784 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60889)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!976073 (= res!653538 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29784 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29784 _keys!1717))))))

(declare-fun b!976074 () Bool)

(declare-fun e!550105 () Bool)

(declare-fun tp_is_empty!22437 () Bool)

(assert (=> b!976074 (= e!550105 tp_is_empty!22437)))

(declare-fun mapNonEmpty!35665 () Bool)

(declare-fun mapRes!35665 () Bool)

(declare-fun tp!67888 () Bool)

(assert (=> mapNonEmpty!35665 (= mapRes!35665 (and tp!67888 e!550105))))

(declare-fun mapKey!35665 () (_ BitVec 32))

(declare-datatypes ((V!34899 0))(
  ( (V!34900 (val!11269 Int)) )
))
(declare-datatypes ((ValueCell!10737 0))(
  ( (ValueCellFull!10737 (v!13828 V!34899)) (EmptyCell!10737) )
))
(declare-datatypes ((array!60891 0))(
  ( (array!60892 (arr!29305 (Array (_ BitVec 32) ValueCell!10737)) (size!29785 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60891)

(declare-fun mapValue!35665 () ValueCell!10737)

(declare-fun mapRest!35665 () (Array (_ BitVec 32) ValueCell!10737))

(assert (=> mapNonEmpty!35665 (= (arr!29305 _values!1425) (store mapRest!35665 mapKey!35665 mapValue!35665))))

(declare-fun res!653541 () Bool)

(assert (=> start!83574 (=> (not res!653541) (not e!550106))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83574 (= res!653541 (validMask!0 mask!2147))))

(assert (=> start!83574 e!550106))

(assert (=> start!83574 true))

(declare-fun e!550107 () Bool)

(declare-fun array_inv!22559 (array!60891) Bool)

(assert (=> start!83574 (and (array_inv!22559 _values!1425) e!550107)))

(assert (=> start!83574 tp_is_empty!22437))

(assert (=> start!83574 tp!67887))

(declare-fun array_inv!22560 (array!60889) Bool)

(assert (=> start!83574 (array_inv!22560 _keys!1717)))

(declare-fun b!976075 () Bool)

(declare-fun e!550108 () Bool)

(assert (=> b!976075 (= e!550108 tp_is_empty!22437)))

(declare-fun b!976076 () Bool)

(declare-fun res!653539 () Bool)

(assert (=> b!976076 (=> (not res!653539) (not e!550106))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!976076 (= res!653539 (validKeyInArray!0 (select (arr!29304 _keys!1717) i!822)))))

(declare-fun b!976077 () Bool)

(declare-fun res!653540 () Bool)

(assert (=> b!976077 (=> (not res!653540) (not e!550106))))

(declare-datatypes ((List!20469 0))(
  ( (Nil!20466) (Cons!20465 (h!21627 (_ BitVec 64)) (t!28982 List!20469)) )
))
(declare-fun arrayNoDuplicates!0 (array!60889 (_ BitVec 32) List!20469) Bool)

(assert (=> b!976077 (= res!653540 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20466))))

(declare-fun b!976078 () Bool)

(declare-fun e!550110 () Bool)

(assert (=> b!976078 (= e!550106 e!550110)))

(declare-fun res!653542 () Bool)

(assert (=> b!976078 (=> (not res!653542) (not e!550110))))

(declare-datatypes ((tuple2!14598 0))(
  ( (tuple2!14599 (_1!7309 (_ BitVec 64)) (_2!7309 V!34899)) )
))
(declare-datatypes ((List!20470 0))(
  ( (Nil!20467) (Cons!20466 (h!21628 tuple2!14598) (t!28983 List!20470)) )
))
(declare-datatypes ((ListLongMap!13309 0))(
  ( (ListLongMap!13310 (toList!6670 List!20470)) )
))
(declare-fun lt!432985 () ListLongMap!13309)

(declare-fun contains!5701 (ListLongMap!13309 (_ BitVec 64)) Bool)

(assert (=> b!976078 (= res!653542 (contains!5701 lt!432985 (select (arr!29304 _keys!1717) i!822)))))

(declare-fun zeroValue!1367 () V!34899)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34899)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3855 (array!60889 array!60891 (_ BitVec 32) (_ BitVec 32) V!34899 V!34899 (_ BitVec 32) Int) ListLongMap!13309)

(assert (=> b!976078 (= lt!432985 (getCurrentListMap!3855 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428))))

(declare-fun b!976079 () Bool)

(declare-fun e!550109 () Bool)

(assert (=> b!976079 (= e!550109 (not (bvsge i!822 #b00000000000000000000000000000000)))))

(declare-fun lt!432988 () tuple2!14598)

(declare-fun +!2881 (ListLongMap!13309 tuple2!14598) ListLongMap!13309)

(assert (=> b!976079 (contains!5701 (+!2881 lt!432985 lt!432988) (select (arr!29304 _keys!1717) i!822))))

(declare-fun lt!432982 () V!34899)

(declare-datatypes ((Unit!32423 0))(
  ( (Unit!32424) )
))
(declare-fun lt!432986 () Unit!32423)

(declare-fun lt!432983 () (_ BitVec 64))

(declare-fun addStillContains!614 (ListLongMap!13309 (_ BitVec 64) V!34899 (_ BitVec 64)) Unit!32423)

(assert (=> b!976079 (= lt!432986 (addStillContains!614 lt!432985 lt!432983 lt!432982 (select (arr!29304 _keys!1717) i!822)))))

(declare-fun lt!432984 () ListLongMap!13309)

(assert (=> b!976079 (= lt!432984 (+!2881 (getCurrentListMap!3855 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) lt!432988))))

(assert (=> b!976079 (= lt!432988 (tuple2!14599 lt!432983 lt!432982))))

(declare-fun get!15196 (ValueCell!10737 V!34899) V!34899)

(declare-fun dynLambda!1720 (Int (_ BitVec 64)) V!34899)

(assert (=> b!976079 (= lt!432982 (get!15196 (select (arr!29305 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1720 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!432987 () Unit!32423)

(declare-fun lemmaListMapRecursiveValidKeyArray!292 (array!60889 array!60891 (_ BitVec 32) (_ BitVec 32) V!34899 V!34899 (_ BitVec 32) Int) Unit!32423)

(assert (=> b!976079 (= lt!432987 (lemmaListMapRecursiveValidKeyArray!292 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!976080 () Bool)

(assert (=> b!976080 (= e!550107 (and e!550108 mapRes!35665))))

(declare-fun condMapEmpty!35665 () Bool)

(declare-fun mapDefault!35665 () ValueCell!10737)

(assert (=> b!976080 (= condMapEmpty!35665 (= (arr!29305 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10737)) mapDefault!35665)))))

(declare-fun b!976081 () Bool)

(declare-fun res!653544 () Bool)

(assert (=> b!976081 (=> (not res!653544) (not e!550106))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60889 (_ BitVec 32)) Bool)

(assert (=> b!976081 (= res!653544 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun mapIsEmpty!35665 () Bool)

(assert (=> mapIsEmpty!35665 mapRes!35665))

(declare-fun b!976082 () Bool)

(declare-fun res!653545 () Bool)

(assert (=> b!976082 (=> (not res!653545) (not e!550106))))

(assert (=> b!976082 (= res!653545 (and (= (size!29785 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29784 _keys!1717) (size!29785 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!976083 () Bool)

(assert (=> b!976083 (= e!550110 e!550109)))

(declare-fun res!653543 () Bool)

(assert (=> b!976083 (=> (not res!653543) (not e!550109))))

(assert (=> b!976083 (= res!653543 (validKeyInArray!0 lt!432983))))

(assert (=> b!976083 (= lt!432983 (select (arr!29304 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(assert (=> b!976083 (= lt!432984 (getCurrentListMap!3855 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(assert (= (and start!83574 res!653541) b!976082))

(assert (= (and b!976082 res!653545) b!976081))

(assert (= (and b!976081 res!653544) b!976077))

(assert (= (and b!976077 res!653540) b!976073))

(assert (= (and b!976073 res!653538) b!976076))

(assert (= (and b!976076 res!653539) b!976078))

(assert (= (and b!976078 res!653542) b!976083))

(assert (= (and b!976083 res!653543) b!976079))

(assert (= (and b!976080 condMapEmpty!35665) mapIsEmpty!35665))

(assert (= (and b!976080 (not condMapEmpty!35665)) mapNonEmpty!35665))

(get-info :version)

(assert (= (and mapNonEmpty!35665 ((_ is ValueCellFull!10737) mapValue!35665)) b!976074))

(assert (= (and b!976080 ((_ is ValueCellFull!10737) mapDefault!35665)) b!976075))

(assert (= start!83574 b!976080))

(declare-fun b_lambda!14601 () Bool)

(assert (=> (not b_lambda!14601) (not b!976079)))

(declare-fun t!28981 () Bool)

(declare-fun tb!6363 () Bool)

(assert (=> (and start!83574 (= defaultEntry!1428 defaultEntry!1428) t!28981) tb!6363))

(declare-fun result!12695 () Bool)

(assert (=> tb!6363 (= result!12695 tp_is_empty!22437)))

(assert (=> b!976079 t!28981))

(declare-fun b_and!31181 () Bool)

(assert (= b_and!31179 (and (=> t!28981 result!12695) b_and!31181)))

(declare-fun m!903385 () Bool)

(assert (=> mapNonEmpty!35665 m!903385))

(declare-fun m!903387 () Bool)

(assert (=> b!976081 m!903387))

(declare-fun m!903389 () Bool)

(assert (=> b!976076 m!903389))

(assert (=> b!976076 m!903389))

(declare-fun m!903391 () Bool)

(assert (=> b!976076 m!903391))

(declare-fun m!903393 () Bool)

(assert (=> b!976083 m!903393))

(declare-fun m!903395 () Bool)

(assert (=> b!976083 m!903395))

(declare-fun m!903397 () Bool)

(assert (=> b!976083 m!903397))

(declare-fun m!903399 () Bool)

(assert (=> b!976079 m!903399))

(declare-fun m!903401 () Bool)

(assert (=> b!976079 m!903401))

(declare-fun m!903403 () Bool)

(assert (=> b!976079 m!903403))

(assert (=> b!976079 m!903399))

(declare-fun m!903405 () Bool)

(assert (=> b!976079 m!903405))

(assert (=> b!976079 m!903389))

(declare-fun m!903407 () Bool)

(assert (=> b!976079 m!903407))

(assert (=> b!976079 m!903401))

(declare-fun m!903409 () Bool)

(assert (=> b!976079 m!903409))

(assert (=> b!976079 m!903389))

(declare-fun m!903411 () Bool)

(assert (=> b!976079 m!903411))

(assert (=> b!976079 m!903407))

(assert (=> b!976079 m!903403))

(assert (=> b!976079 m!903389))

(declare-fun m!903413 () Bool)

(assert (=> b!976079 m!903413))

(declare-fun m!903415 () Bool)

(assert (=> b!976079 m!903415))

(declare-fun m!903417 () Bool)

(assert (=> b!976077 m!903417))

(declare-fun m!903419 () Bool)

(assert (=> start!83574 m!903419))

(declare-fun m!903421 () Bool)

(assert (=> start!83574 m!903421))

(declare-fun m!903423 () Bool)

(assert (=> start!83574 m!903423))

(assert (=> b!976078 m!903389))

(assert (=> b!976078 m!903389))

(declare-fun m!903425 () Bool)

(assert (=> b!976078 m!903425))

(declare-fun m!903427 () Bool)

(assert (=> b!976078 m!903427))

(check-sat (not b!976078) (not b!976081) (not b!976077) (not b_lambda!14601) (not b!976076) b_and!31181 tp_is_empty!22437 (not mapNonEmpty!35665) (not b!976083) (not b_next!19533) (not b!976079) (not start!83574))
(check-sat b_and!31181 (not b_next!19533))
