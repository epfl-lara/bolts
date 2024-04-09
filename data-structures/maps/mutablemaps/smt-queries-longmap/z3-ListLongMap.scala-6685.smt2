; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84112 () Bool)

(assert start!84112)

(declare-fun b_free!19839 () Bool)

(declare-fun b_next!19839 () Bool)

(assert (=> start!84112 (= b_free!19839 (not b_next!19839))))

(declare-fun tp!69041 () Bool)

(declare-fun b_and!31779 () Bool)

(assert (=> start!84112 (= tp!69041 b_and!31779)))

(declare-fun b!983074 () Bool)

(declare-fun res!657998 () Bool)

(declare-fun e!554150 () Bool)

(assert (=> b!983074 (=> (not res!657998) (not e!554150))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!983074 (= res!657998 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!657999 () Bool)

(assert (=> start!84112 (=> (not res!657999) (not e!554150))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84112 (= res!657999 (validMask!0 mask!1948))))

(assert (=> start!84112 e!554150))

(assert (=> start!84112 true))

(declare-fun tp_is_empty!22887 () Bool)

(assert (=> start!84112 tp_is_empty!22887))

(declare-datatypes ((V!35499 0))(
  ( (V!35500 (val!11494 Int)) )
))
(declare-datatypes ((ValueCell!10962 0))(
  ( (ValueCellFull!10962 (v!14056 V!35499)) (EmptyCell!10962) )
))
(declare-datatypes ((array!61757 0))(
  ( (array!61758 (arr!29732 (Array (_ BitVec 32) ValueCell!10962)) (size!30212 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61757)

(declare-fun e!554146 () Bool)

(declare-fun array_inv!22861 (array!61757) Bool)

(assert (=> start!84112 (and (array_inv!22861 _values!1278) e!554146)))

(assert (=> start!84112 tp!69041))

(declare-datatypes ((array!61759 0))(
  ( (array!61760 (arr!29733 (Array (_ BitVec 32) (_ BitVec 64))) (size!30213 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61759)

(declare-fun array_inv!22862 (array!61759) Bool)

(assert (=> start!84112 (array_inv!22862 _keys!1544)))

(declare-fun mapIsEmpty!36359 () Bool)

(declare-fun mapRes!36359 () Bool)

(assert (=> mapIsEmpty!36359 mapRes!36359))

(declare-fun b!983075 () Bool)

(declare-fun res!657997 () Bool)

(assert (=> b!983075 (=> (not res!657997) (not e!554150))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61759 (_ BitVec 32)) Bool)

(assert (=> b!983075 (= res!657997 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!983076 () Bool)

(declare-fun e!554149 () Bool)

(assert (=> b!983076 (= e!554149 tp_is_empty!22887)))

(declare-fun b!983077 () Bool)

(declare-fun e!554147 () Bool)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!983077 (= e!554147 (not (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!14832 0))(
  ( (tuple2!14833 (_1!7426 (_ BitVec 64)) (_2!7426 V!35499)) )
))
(declare-datatypes ((List!20736 0))(
  ( (Nil!20733) (Cons!20732 (h!21894 tuple2!14832) (t!29533 List!20736)) )
))
(declare-datatypes ((ListLongMap!13543 0))(
  ( (ListLongMap!13544 (toList!6787 List!20736)) )
))
(declare-fun lt!436419 () ListLongMap!13543)

(declare-fun lt!436416 () tuple2!14832)

(declare-fun lt!436418 () tuple2!14832)

(declare-fun +!2983 (ListLongMap!13543 tuple2!14832) ListLongMap!13543)

(assert (=> b!983077 (= (+!2983 (+!2983 lt!436419 lt!436416) lt!436418) (+!2983 (+!2983 lt!436419 lt!436418) lt!436416))))

(declare-fun lt!436420 () V!35499)

(assert (=> b!983077 (= lt!436418 (tuple2!14833 (select (arr!29733 _keys!1544) from!1932) lt!436420))))

(declare-fun zeroValue!1220 () V!35499)

(assert (=> b!983077 (= lt!436416 (tuple2!14833 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32641 0))(
  ( (Unit!32642) )
))
(declare-fun lt!436417 () Unit!32641)

(declare-fun addCommutativeForDiffKeys!645 (ListLongMap!13543 (_ BitVec 64) V!35499 (_ BitVec 64) V!35499) Unit!32641)

(assert (=> b!983077 (= lt!436417 (addCommutativeForDiffKeys!645 lt!436419 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29733 _keys!1544) from!1932) lt!436420))))

(declare-fun b!983078 () Bool)

(assert (=> b!983078 (= e!554150 e!554147)))

(declare-fun res!657995 () Bool)

(assert (=> b!983078 (=> (not res!657995) (not e!554147))))

(assert (=> b!983078 (= res!657995 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29733 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15448 (ValueCell!10962 V!35499) V!35499)

(declare-fun dynLambda!1819 (Int (_ BitVec 64)) V!35499)

(assert (=> b!983078 (= lt!436420 (get!15448 (select (arr!29732 _values!1278) from!1932) (dynLambda!1819 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35499)

(declare-fun getCurrentListMapNoExtraKeys!3446 (array!61759 array!61757 (_ BitVec 32) (_ BitVec 32) V!35499 V!35499 (_ BitVec 32) Int) ListLongMap!13543)

(assert (=> b!983078 (= lt!436419 (getCurrentListMapNoExtraKeys!3446 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!983079 () Bool)

(declare-fun res!657992 () Bool)

(assert (=> b!983079 (=> (not res!657992) (not e!554150))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!983079 (= res!657992 (validKeyInArray!0 (select (arr!29733 _keys!1544) from!1932)))))

(declare-fun b!983080 () Bool)

(declare-fun res!657994 () Bool)

(assert (=> b!983080 (=> (not res!657994) (not e!554150))))

(assert (=> b!983080 (= res!657994 (and (= (size!30212 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30213 _keys!1544) (size!30212 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!983081 () Bool)

(declare-fun res!657993 () Bool)

(assert (=> b!983081 (=> (not res!657993) (not e!554150))))

(declare-datatypes ((List!20737 0))(
  ( (Nil!20734) (Cons!20733 (h!21895 (_ BitVec 64)) (t!29534 List!20737)) )
))
(declare-fun arrayNoDuplicates!0 (array!61759 (_ BitVec 32) List!20737) Bool)

(assert (=> b!983081 (= res!657993 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20734))))

(declare-fun b!983082 () Bool)

(assert (=> b!983082 (= e!554146 (and e!554149 mapRes!36359))))

(declare-fun condMapEmpty!36359 () Bool)

(declare-fun mapDefault!36359 () ValueCell!10962)

(assert (=> b!983082 (= condMapEmpty!36359 (= (arr!29732 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10962)) mapDefault!36359)))))

(declare-fun b!983083 () Bool)

(declare-fun res!657996 () Bool)

(assert (=> b!983083 (=> (not res!657996) (not e!554150))))

(assert (=> b!983083 (= res!657996 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30213 _keys!1544))))))

(declare-fun b!983084 () Bool)

(declare-fun e!554145 () Bool)

(assert (=> b!983084 (= e!554145 tp_is_empty!22887)))

(declare-fun mapNonEmpty!36359 () Bool)

(declare-fun tp!69040 () Bool)

(assert (=> mapNonEmpty!36359 (= mapRes!36359 (and tp!69040 e!554145))))

(declare-fun mapRest!36359 () (Array (_ BitVec 32) ValueCell!10962))

(declare-fun mapKey!36359 () (_ BitVec 32))

(declare-fun mapValue!36359 () ValueCell!10962)

(assert (=> mapNonEmpty!36359 (= (arr!29732 _values!1278) (store mapRest!36359 mapKey!36359 mapValue!36359))))

(assert (= (and start!84112 res!657999) b!983080))

(assert (= (and b!983080 res!657994) b!983075))

(assert (= (and b!983075 res!657997) b!983081))

(assert (= (and b!983081 res!657993) b!983083))

(assert (= (and b!983083 res!657996) b!983079))

(assert (= (and b!983079 res!657992) b!983074))

(assert (= (and b!983074 res!657998) b!983078))

(assert (= (and b!983078 res!657995) b!983077))

(assert (= (and b!983082 condMapEmpty!36359) mapIsEmpty!36359))

(assert (= (and b!983082 (not condMapEmpty!36359)) mapNonEmpty!36359))

(get-info :version)

(assert (= (and mapNonEmpty!36359 ((_ is ValueCellFull!10962) mapValue!36359)) b!983084))

(assert (= (and b!983082 ((_ is ValueCellFull!10962) mapDefault!36359)) b!983076))

(assert (= start!84112 b!983082))

(declare-fun b_lambda!14907 () Bool)

(assert (=> (not b_lambda!14907) (not b!983078)))

(declare-fun t!29532 () Bool)

(declare-fun tb!6647 () Bool)

(assert (=> (and start!84112 (= defaultEntry!1281 defaultEntry!1281) t!29532) tb!6647))

(declare-fun result!13275 () Bool)

(assert (=> tb!6647 (= result!13275 tp_is_empty!22887)))

(assert (=> b!983078 t!29532))

(declare-fun b_and!31781 () Bool)

(assert (= b_and!31779 (and (=> t!29532 result!13275) b_and!31781)))

(declare-fun m!910497 () Bool)

(assert (=> b!983081 m!910497))

(declare-fun m!910499 () Bool)

(assert (=> start!84112 m!910499))

(declare-fun m!910501 () Bool)

(assert (=> start!84112 m!910501))

(declare-fun m!910503 () Bool)

(assert (=> start!84112 m!910503))

(declare-fun m!910505 () Bool)

(assert (=> b!983079 m!910505))

(assert (=> b!983079 m!910505))

(declare-fun m!910507 () Bool)

(assert (=> b!983079 m!910507))

(assert (=> b!983078 m!910505))

(declare-fun m!910509 () Bool)

(assert (=> b!983078 m!910509))

(declare-fun m!910511 () Bool)

(assert (=> b!983078 m!910511))

(declare-fun m!910513 () Bool)

(assert (=> b!983078 m!910513))

(assert (=> b!983078 m!910509))

(assert (=> b!983078 m!910513))

(declare-fun m!910515 () Bool)

(assert (=> b!983078 m!910515))

(declare-fun m!910517 () Bool)

(assert (=> b!983075 m!910517))

(assert (=> b!983077 m!910505))

(declare-fun m!910519 () Bool)

(assert (=> b!983077 m!910519))

(assert (=> b!983077 m!910519))

(declare-fun m!910521 () Bool)

(assert (=> b!983077 m!910521))

(declare-fun m!910523 () Bool)

(assert (=> b!983077 m!910523))

(assert (=> b!983077 m!910523))

(declare-fun m!910525 () Bool)

(assert (=> b!983077 m!910525))

(assert (=> b!983077 m!910505))

(declare-fun m!910527 () Bool)

(assert (=> b!983077 m!910527))

(declare-fun m!910529 () Bool)

(assert (=> mapNonEmpty!36359 m!910529))

(check-sat (not b!983081) b_and!31781 (not b_lambda!14907) (not b!983077) (not b_next!19839) (not mapNonEmpty!36359) (not start!84112) (not b!983079) (not b!983078) tp_is_empty!22887 (not b!983075))
(check-sat b_and!31781 (not b_next!19839))
