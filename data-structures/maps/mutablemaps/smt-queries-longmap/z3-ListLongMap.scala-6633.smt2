; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83800 () Bool)

(assert start!83800)

(declare-fun b_free!19581 () Bool)

(declare-fun b_next!19581 () Bool)

(assert (=> start!83800 (= b_free!19581 (not b_next!19581))))

(declare-fun tp!68185 () Bool)

(declare-fun b_and!31269 () Bool)

(assert (=> start!83800 (= tp!68185 b_and!31269)))

(declare-fun b!978119 () Bool)

(declare-fun res!654698 () Bool)

(declare-fun e!551489 () Bool)

(assert (=> b!978119 (=> (not res!654698) (not e!551489))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35083 0))(
  ( (V!35084 (val!11338 Int)) )
))
(declare-datatypes ((ValueCell!10806 0))(
  ( (ValueCellFull!10806 (v!13900 V!35083)) (EmptyCell!10806) )
))
(declare-datatypes ((array!61167 0))(
  ( (array!61168 (arr!29437 (Array (_ BitVec 32) ValueCell!10806)) (size!29917 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61167)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!61169 0))(
  ( (array!61170 (arr!29438 (Array (_ BitVec 32) (_ BitVec 64))) (size!29918 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61169)

(assert (=> b!978119 (= res!654698 (and (= (size!29917 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29918 _keys!1544) (size!29917 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!35891 () Bool)

(declare-fun mapRes!35891 () Bool)

(assert (=> mapIsEmpty!35891 mapRes!35891))

(declare-fun b!978120 () Bool)

(declare-fun e!551488 () Bool)

(declare-fun tp_is_empty!22575 () Bool)

(assert (=> b!978120 (= e!551488 tp_is_empty!22575)))

(declare-fun b!978121 () Bool)

(declare-fun e!551486 () Bool)

(assert (=> b!978121 (= e!551486 tp_is_empty!22575)))

(declare-fun b!978123 () Bool)

(declare-fun res!654695 () Bool)

(assert (=> b!978123 (=> (not res!654695) (not e!551489))))

(declare-datatypes ((List!20534 0))(
  ( (Nil!20531) (Cons!20530 (h!21692 (_ BitVec 64)) (t!29079 List!20534)) )
))
(declare-fun arrayNoDuplicates!0 (array!61169 (_ BitVec 32) List!20534) Bool)

(assert (=> b!978123 (= res!654695 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20531))))

(declare-fun b!978124 () Bool)

(declare-fun e!551485 () Bool)

(assert (=> b!978124 (= e!551485 (and e!551486 mapRes!35891))))

(declare-fun condMapEmpty!35891 () Bool)

(declare-fun mapDefault!35891 () ValueCell!10806)

(assert (=> b!978124 (= condMapEmpty!35891 (= (arr!29437 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10806)) mapDefault!35891)))))

(declare-fun b!978125 () Bool)

(declare-fun res!654697 () Bool)

(assert (=> b!978125 (=> (not res!654697) (not e!551489))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!978125 (= res!654697 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29918 _keys!1544))))))

(declare-fun mapNonEmpty!35891 () Bool)

(declare-fun tp!68186 () Bool)

(assert (=> mapNonEmpty!35891 (= mapRes!35891 (and tp!68186 e!551488))))

(declare-fun mapRest!35891 () (Array (_ BitVec 32) ValueCell!10806))

(declare-fun mapValue!35891 () ValueCell!10806)

(declare-fun mapKey!35891 () (_ BitVec 32))

(assert (=> mapNonEmpty!35891 (= (arr!29437 _values!1278) (store mapRest!35891 mapKey!35891 mapValue!35891))))

(declare-fun b!978126 () Bool)

(declare-fun res!654694 () Bool)

(assert (=> b!978126 (=> (not res!654694) (not e!551489))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!978126 (= res!654694 (validKeyInArray!0 (select (arr!29438 _keys!1544) from!1932)))))

(declare-fun res!654693 () Bool)

(assert (=> start!83800 (=> (not res!654693) (not e!551489))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83800 (= res!654693 (validMask!0 mask!1948))))

(assert (=> start!83800 e!551489))

(assert (=> start!83800 true))

(assert (=> start!83800 tp_is_empty!22575))

(declare-fun array_inv!22655 (array!61167) Bool)

(assert (=> start!83800 (and (array_inv!22655 _values!1278) e!551485)))

(assert (=> start!83800 tp!68185))

(declare-fun array_inv!22656 (array!61169) Bool)

(assert (=> start!83800 (array_inv!22656 _keys!1544)))

(declare-fun b!978122 () Bool)

(declare-fun res!654699 () Bool)

(assert (=> b!978122 (=> (not res!654699) (not e!551489))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61169 (_ BitVec 32)) Bool)

(assert (=> b!978122 (= res!654699 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!978127 () Bool)

(assert (=> b!978127 (= e!551489 (not true))))

(declare-datatypes ((tuple2!14634 0))(
  ( (tuple2!14635 (_1!7327 (_ BitVec 64)) (_2!7327 V!35083)) )
))
(declare-datatypes ((List!20535 0))(
  ( (Nil!20532) (Cons!20531 (h!21693 tuple2!14634) (t!29080 List!20535)) )
))
(declare-datatypes ((ListLongMap!13345 0))(
  ( (ListLongMap!13346 (toList!6688 List!20535)) )
))
(declare-fun lt!433639 () ListLongMap!13345)

(declare-fun lt!433637 () tuple2!14634)

(declare-fun lt!433635 () tuple2!14634)

(declare-fun +!2894 (ListLongMap!13345 tuple2!14634) ListLongMap!13345)

(assert (=> b!978127 (= (+!2894 (+!2894 lt!433639 lt!433637) lt!433635) (+!2894 (+!2894 lt!433639 lt!433635) lt!433637))))

(declare-fun lt!433638 () V!35083)

(assert (=> b!978127 (= lt!433635 (tuple2!14635 (select (arr!29438 _keys!1544) from!1932) lt!433638))))

(declare-fun minValue!1220 () V!35083)

(assert (=> b!978127 (= lt!433637 (tuple2!14635 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32463 0))(
  ( (Unit!32464) )
))
(declare-fun lt!433636 () Unit!32463)

(declare-fun addCommutativeForDiffKeys!556 (ListLongMap!13345 (_ BitVec 64) V!35083 (_ BitVec 64) V!35083) Unit!32463)

(assert (=> b!978127 (= lt!433636 (addCommutativeForDiffKeys!556 lt!433639 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29438 _keys!1544) from!1932) lt!433638))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15255 (ValueCell!10806 V!35083) V!35083)

(declare-fun dynLambda!1730 (Int (_ BitVec 64)) V!35083)

(assert (=> b!978127 (= lt!433638 (get!15255 (select (arr!29437 _values!1278) from!1932) (dynLambda!1730 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1220 () V!35083)

(declare-fun getCurrentListMapNoExtraKeys!3355 (array!61169 array!61167 (_ BitVec 32) (_ BitVec 32) V!35083 V!35083 (_ BitVec 32) Int) ListLongMap!13345)

(assert (=> b!978127 (= lt!433639 (+!2894 (getCurrentListMapNoExtraKeys!3355 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14635 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun b!978128 () Bool)

(declare-fun res!654696 () Bool)

(assert (=> b!978128 (=> (not res!654696) (not e!551489))))

(assert (=> b!978128 (= res!654696 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and start!83800 res!654693) b!978119))

(assert (= (and b!978119 res!654698) b!978122))

(assert (= (and b!978122 res!654699) b!978123))

(assert (= (and b!978123 res!654695) b!978125))

(assert (= (and b!978125 res!654697) b!978126))

(assert (= (and b!978126 res!654694) b!978128))

(assert (= (and b!978128 res!654696) b!978127))

(assert (= (and b!978124 condMapEmpty!35891) mapIsEmpty!35891))

(assert (= (and b!978124 (not condMapEmpty!35891)) mapNonEmpty!35891))

(get-info :version)

(assert (= (and mapNonEmpty!35891 ((_ is ValueCellFull!10806) mapValue!35891)) b!978120))

(assert (= (and b!978124 ((_ is ValueCellFull!10806) mapDefault!35891)) b!978121))

(assert (= start!83800 b!978124))

(declare-fun b_lambda!14655 () Bool)

(assert (=> (not b_lambda!14655) (not b!978127)))

(declare-fun t!29078 () Bool)

(declare-fun tb!6395 () Bool)

(assert (=> (and start!83800 (= defaultEntry!1281 defaultEntry!1281) t!29078) tb!6395))

(declare-fun result!12771 () Bool)

(assert (=> tb!6395 (= result!12771 tp_is_empty!22575)))

(assert (=> b!978127 t!29078))

(declare-fun b_and!31271 () Bool)

(assert (= b_and!31269 (and (=> t!29078 result!12771) b_and!31271)))

(declare-fun m!905351 () Bool)

(assert (=> start!83800 m!905351))

(declare-fun m!905353 () Bool)

(assert (=> start!83800 m!905353))

(declare-fun m!905355 () Bool)

(assert (=> start!83800 m!905355))

(declare-fun m!905357 () Bool)

(assert (=> b!978127 m!905357))

(declare-fun m!905359 () Bool)

(assert (=> b!978127 m!905359))

(assert (=> b!978127 m!905357))

(declare-fun m!905361 () Bool)

(assert (=> b!978127 m!905361))

(declare-fun m!905363 () Bool)

(assert (=> b!978127 m!905363))

(declare-fun m!905365 () Bool)

(assert (=> b!978127 m!905365))

(declare-fun m!905367 () Bool)

(assert (=> b!978127 m!905367))

(declare-fun m!905369 () Bool)

(assert (=> b!978127 m!905369))

(assert (=> b!978127 m!905367))

(declare-fun m!905371 () Bool)

(assert (=> b!978127 m!905371))

(declare-fun m!905373 () Bool)

(assert (=> b!978127 m!905373))

(assert (=> b!978127 m!905361))

(assert (=> b!978127 m!905373))

(declare-fun m!905375 () Bool)

(assert (=> b!978127 m!905375))

(assert (=> b!978127 m!905371))

(declare-fun m!905377 () Bool)

(assert (=> b!978127 m!905377))

(assert (=> b!978127 m!905363))

(declare-fun m!905379 () Bool)

(assert (=> b!978123 m!905379))

(assert (=> b!978126 m!905357))

(assert (=> b!978126 m!905357))

(declare-fun m!905381 () Bool)

(assert (=> b!978126 m!905381))

(declare-fun m!905383 () Bool)

(assert (=> b!978122 m!905383))

(declare-fun m!905385 () Bool)

(assert (=> mapNonEmpty!35891 m!905385))

(check-sat b_and!31271 (not start!83800) (not b!978127) (not b!978126) (not b_lambda!14655) (not b!978122) (not mapNonEmpty!35891) (not b!978123) tp_is_empty!22575 (not b_next!19581))
(check-sat b_and!31271 (not b_next!19581))
