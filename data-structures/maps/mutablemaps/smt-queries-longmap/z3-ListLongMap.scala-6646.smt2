; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83878 () Bool)

(assert start!83878)

(declare-fun b_free!19659 () Bool)

(declare-fun b_next!19659 () Bool)

(assert (=> start!83878 (= b_free!19659 (not b_next!19659))))

(declare-fun tp!68419 () Bool)

(declare-fun b_and!31425 () Bool)

(assert (=> start!83878 (= tp!68419 b_and!31425)))

(declare-fun b!979426 () Bool)

(declare-fun e!552129 () Bool)

(assert (=> b!979426 (= e!552129 true)))

(declare-datatypes ((V!35187 0))(
  ( (V!35188 (val!11377 Int)) )
))
(declare-datatypes ((tuple2!14692 0))(
  ( (tuple2!14693 (_1!7356 (_ BitVec 64)) (_2!7356 V!35187)) )
))
(declare-fun lt!434524 () tuple2!14692)

(declare-fun lt!434516 () tuple2!14692)

(declare-datatypes ((List!20586 0))(
  ( (Nil!20583) (Cons!20582 (h!21744 tuple2!14692) (t!29209 List!20586)) )
))
(declare-datatypes ((ListLongMap!13403 0))(
  ( (ListLongMap!13404 (toList!6717 List!20586)) )
))
(declare-fun lt!434515 () ListLongMap!13403)

(declare-fun lt!434520 () ListLongMap!13403)

(declare-fun +!2923 (ListLongMap!13403 tuple2!14692) ListLongMap!13403)

(assert (=> b!979426 (= lt!434515 (+!2923 (+!2923 lt!434520 lt!434516) lt!434524))))

(declare-fun lt!434517 () V!35187)

(declare-datatypes ((Unit!32521 0))(
  ( (Unit!32522) )
))
(declare-fun lt!434522 () Unit!32521)

(declare-fun zeroValue!1220 () V!35187)

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61319 0))(
  ( (array!61320 (arr!29513 (Array (_ BitVec 32) (_ BitVec 64))) (size!29993 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61319)

(declare-fun addCommutativeForDiffKeys!585 (ListLongMap!13403 (_ BitVec 64) V!35187 (_ BitVec 64) V!35187) Unit!32521)

(assert (=> b!979426 (= lt!434522 (addCommutativeForDiffKeys!585 lt!434520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29513 _keys!1544) from!1932) lt!434517))))

(declare-fun b!979428 () Bool)

(declare-fun res!655577 () Bool)

(declare-fun e!552130 () Bool)

(assert (=> b!979428 (=> (not res!655577) (not e!552130))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!979428 (= res!655577 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!979429 () Bool)

(declare-fun e!552131 () Bool)

(declare-fun tp_is_empty!22653 () Bool)

(assert (=> b!979429 (= e!552131 tp_is_empty!22653)))

(declare-fun b!979430 () Bool)

(declare-fun res!655576 () Bool)

(assert (=> b!979430 (=> (not res!655576) (not e!552130))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61319 (_ BitVec 32)) Bool)

(assert (=> b!979430 (= res!655576 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapNonEmpty!36008 () Bool)

(declare-fun mapRes!36008 () Bool)

(declare-fun tp!68420 () Bool)

(assert (=> mapNonEmpty!36008 (= mapRes!36008 (and tp!68420 e!552131))))

(declare-datatypes ((ValueCell!10845 0))(
  ( (ValueCellFull!10845 (v!13939 V!35187)) (EmptyCell!10845) )
))
(declare-datatypes ((array!61321 0))(
  ( (array!61322 (arr!29514 (Array (_ BitVec 32) ValueCell!10845)) (size!29994 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61321)

(declare-fun mapKey!36008 () (_ BitVec 32))

(declare-fun mapValue!36008 () ValueCell!10845)

(declare-fun mapRest!36008 () (Array (_ BitVec 32) ValueCell!10845))

(assert (=> mapNonEmpty!36008 (= (arr!29514 _values!1278) (store mapRest!36008 mapKey!36008 mapValue!36008))))

(declare-fun mapIsEmpty!36008 () Bool)

(assert (=> mapIsEmpty!36008 mapRes!36008))

(declare-fun b!979431 () Bool)

(declare-fun res!655573 () Bool)

(assert (=> b!979431 (=> (not res!655573) (not e!552130))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!979431 (= res!655573 (validKeyInArray!0 (select (arr!29513 _keys!1544) from!1932)))))

(declare-fun b!979432 () Bool)

(assert (=> b!979432 (= e!552130 (not e!552129))))

(declare-fun res!655572 () Bool)

(assert (=> b!979432 (=> res!655572 e!552129)))

(assert (=> b!979432 (= res!655572 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29513 _keys!1544) from!1932)))))

(declare-fun lt!434521 () ListLongMap!13403)

(declare-fun lt!434523 () tuple2!14692)

(assert (=> b!979432 (= (+!2923 lt!434521 lt!434516) (+!2923 lt!434515 lt!434523))))

(declare-fun lt!434519 () ListLongMap!13403)

(assert (=> b!979432 (= lt!434515 (+!2923 lt!434519 lt!434516))))

(assert (=> b!979432 (= lt!434516 (tuple2!14693 (select (arr!29513 _keys!1544) from!1932) lt!434517))))

(assert (=> b!979432 (= lt!434521 (+!2923 lt!434519 lt!434523))))

(declare-fun minValue!1220 () V!35187)

(assert (=> b!979432 (= lt!434523 (tuple2!14693 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-fun lt!434518 () Unit!32521)

(assert (=> b!979432 (= lt!434518 (addCommutativeForDiffKeys!585 lt!434519 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29513 _keys!1544) from!1932) lt!434517))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15309 (ValueCell!10845 V!35187) V!35187)

(declare-fun dynLambda!1758 (Int (_ BitVec 64)) V!35187)

(assert (=> b!979432 (= lt!434517 (get!15309 (select (arr!29514 _values!1278) from!1932) (dynLambda!1758 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!979432 (= lt!434519 (+!2923 lt!434520 lt!434524))))

(assert (=> b!979432 (= lt!434524 (tuple2!14693 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun getCurrentListMapNoExtraKeys!3383 (array!61319 array!61321 (_ BitVec 32) (_ BitVec 32) V!35187 V!35187 (_ BitVec 32) Int) ListLongMap!13403)

(assert (=> b!979432 (= lt!434520 (getCurrentListMapNoExtraKeys!3383 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!979433 () Bool)

(declare-fun res!655578 () Bool)

(assert (=> b!979433 (=> (not res!655578) (not e!552130))))

(assert (=> b!979433 (= res!655578 (and (= (size!29994 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29993 _keys!1544) (size!29994 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!979427 () Bool)

(declare-fun res!655571 () Bool)

(assert (=> b!979427 (=> (not res!655571) (not e!552130))))

(declare-datatypes ((List!20587 0))(
  ( (Nil!20584) (Cons!20583 (h!21745 (_ BitVec 64)) (t!29210 List!20587)) )
))
(declare-fun arrayNoDuplicates!0 (array!61319 (_ BitVec 32) List!20587) Bool)

(assert (=> b!979427 (= res!655571 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20584))))

(declare-fun res!655574 () Bool)

(assert (=> start!83878 (=> (not res!655574) (not e!552130))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83878 (= res!655574 (validMask!0 mask!1948))))

(assert (=> start!83878 e!552130))

(assert (=> start!83878 true))

(assert (=> start!83878 tp_is_empty!22653))

(declare-fun e!552132 () Bool)

(declare-fun array_inv!22709 (array!61321) Bool)

(assert (=> start!83878 (and (array_inv!22709 _values!1278) e!552132)))

(assert (=> start!83878 tp!68419))

(declare-fun array_inv!22710 (array!61319) Bool)

(assert (=> start!83878 (array_inv!22710 _keys!1544)))

(declare-fun b!979434 () Bool)

(declare-fun e!552134 () Bool)

(assert (=> b!979434 (= e!552132 (and e!552134 mapRes!36008))))

(declare-fun condMapEmpty!36008 () Bool)

(declare-fun mapDefault!36008 () ValueCell!10845)

(assert (=> b!979434 (= condMapEmpty!36008 (= (arr!29514 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10845)) mapDefault!36008)))))

(declare-fun b!979435 () Bool)

(declare-fun res!655575 () Bool)

(assert (=> b!979435 (=> (not res!655575) (not e!552130))))

(assert (=> b!979435 (= res!655575 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29993 _keys!1544))))))

(declare-fun b!979436 () Bool)

(assert (=> b!979436 (= e!552134 tp_is_empty!22653)))

(assert (= (and start!83878 res!655574) b!979433))

(assert (= (and b!979433 res!655578) b!979430))

(assert (= (and b!979430 res!655576) b!979427))

(assert (= (and b!979427 res!655571) b!979435))

(assert (= (and b!979435 res!655575) b!979431))

(assert (= (and b!979431 res!655573) b!979428))

(assert (= (and b!979428 res!655577) b!979432))

(assert (= (and b!979432 (not res!655572)) b!979426))

(assert (= (and b!979434 condMapEmpty!36008) mapIsEmpty!36008))

(assert (= (and b!979434 (not condMapEmpty!36008)) mapNonEmpty!36008))

(get-info :version)

(assert (= (and mapNonEmpty!36008 ((_ is ValueCellFull!10845) mapValue!36008)) b!979429))

(assert (= (and b!979434 ((_ is ValueCellFull!10845) mapDefault!36008)) b!979436))

(assert (= start!83878 b!979434))

(declare-fun b_lambda!14733 () Bool)

(assert (=> (not b_lambda!14733) (not b!979432)))

(declare-fun t!29208 () Bool)

(declare-fun tb!6473 () Bool)

(assert (=> (and start!83878 (= defaultEntry!1281 defaultEntry!1281) t!29208) tb!6473))

(declare-fun result!12927 () Bool)

(assert (=> tb!6473 (= result!12927 tp_is_empty!22653)))

(assert (=> b!979432 t!29208))

(declare-fun b_and!31427 () Bool)

(assert (= b_and!31425 (and (=> t!29208 result!12927) b_and!31427)))

(declare-fun m!906869 () Bool)

(assert (=> b!979432 m!906869))

(declare-fun m!906871 () Bool)

(assert (=> b!979432 m!906871))

(declare-fun m!906873 () Bool)

(assert (=> b!979432 m!906873))

(declare-fun m!906875 () Bool)

(assert (=> b!979432 m!906875))

(declare-fun m!906877 () Bool)

(assert (=> b!979432 m!906877))

(declare-fun m!906879 () Bool)

(assert (=> b!979432 m!906879))

(assert (=> b!979432 m!906869))

(declare-fun m!906881 () Bool)

(assert (=> b!979432 m!906881))

(declare-fun m!906883 () Bool)

(assert (=> b!979432 m!906883))

(declare-fun m!906885 () Bool)

(assert (=> b!979432 m!906885))

(declare-fun m!906887 () Bool)

(assert (=> b!979432 m!906887))

(assert (=> b!979432 m!906871))

(assert (=> b!979432 m!906887))

(declare-fun m!906889 () Bool)

(assert (=> b!979432 m!906889))

(declare-fun m!906891 () Bool)

(assert (=> b!979430 m!906891))

(declare-fun m!906893 () Bool)

(assert (=> mapNonEmpty!36008 m!906893))

(declare-fun m!906895 () Bool)

(assert (=> b!979427 m!906895))

(declare-fun m!906897 () Bool)

(assert (=> b!979426 m!906897))

(assert (=> b!979426 m!906897))

(declare-fun m!906899 () Bool)

(assert (=> b!979426 m!906899))

(assert (=> b!979426 m!906869))

(assert (=> b!979426 m!906869))

(declare-fun m!906901 () Bool)

(assert (=> b!979426 m!906901))

(assert (=> b!979431 m!906869))

(assert (=> b!979431 m!906869))

(declare-fun m!906903 () Bool)

(assert (=> b!979431 m!906903))

(declare-fun m!906905 () Bool)

(assert (=> start!83878 m!906905))

(declare-fun m!906907 () Bool)

(assert (=> start!83878 m!906907))

(declare-fun m!906909 () Bool)

(assert (=> start!83878 m!906909))

(check-sat (not b!979427) (not b_lambda!14733) (not b!979432) (not b!979430) (not b!979426) (not b_next!19659) tp_is_empty!22653 (not mapNonEmpty!36008) b_and!31427 (not start!83878) (not b!979431))
(check-sat b_and!31427 (not b_next!19659))
