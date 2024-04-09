; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84034 () Bool)

(assert start!84034)

(declare-fun b_free!19761 () Bool)

(declare-fun b_next!19761 () Bool)

(assert (=> start!84034 (= b_free!19761 (not b_next!19761))))

(declare-fun tp!68806 () Bool)

(declare-fun b_and!31623 () Bool)

(assert (=> start!84034 (= tp!68806 b_and!31623)))

(declare-fun b!981709 () Bool)

(declare-fun res!657063 () Bool)

(declare-fun e!553448 () Bool)

(assert (=> b!981709 (=> (not res!657063) (not e!553448))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61611 0))(
  ( (array!61612 (arr!29659 (Array (_ BitVec 32) (_ BitVec 64))) (size!30139 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61611)

(assert (=> b!981709 (= res!657063 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30139 _keys!1544))))))

(declare-fun b!981710 () Bool)

(declare-fun e!553447 () Bool)

(assert (=> b!981710 (= e!553447 (not true))))

(declare-datatypes ((V!35395 0))(
  ( (V!35396 (val!11455 Int)) )
))
(declare-datatypes ((tuple2!14778 0))(
  ( (tuple2!14779 (_1!7399 (_ BitVec 64)) (_2!7399 V!35395)) )
))
(declare-datatypes ((List!20684 0))(
  ( (Nil!20681) (Cons!20680 (h!21842 tuple2!14778) (t!29403 List!20684)) )
))
(declare-datatypes ((ListLongMap!13489 0))(
  ( (ListLongMap!13490 (toList!6760 List!20684)) )
))
(declare-fun lt!435832 () ListLongMap!13489)

(declare-fun lt!435831 () tuple2!14778)

(declare-fun lt!435833 () tuple2!14778)

(declare-fun +!2963 (ListLongMap!13489 tuple2!14778) ListLongMap!13489)

(assert (=> b!981710 (= (+!2963 (+!2963 lt!435832 lt!435831) lt!435833) (+!2963 (+!2963 lt!435832 lt!435833) lt!435831))))

(declare-fun lt!435834 () V!35395)

(assert (=> b!981710 (= lt!435833 (tuple2!14779 (select (arr!29659 _keys!1544) from!1932) lt!435834))))

(declare-fun zeroValue!1220 () V!35395)

(assert (=> b!981710 (= lt!435831 (tuple2!14779 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32601 0))(
  ( (Unit!32602) )
))
(declare-fun lt!435835 () Unit!32601)

(declare-fun addCommutativeForDiffKeys!625 (ListLongMap!13489 (_ BitVec 64) V!35395 (_ BitVec 64) V!35395) Unit!32601)

(assert (=> b!981710 (= lt!435835 (addCommutativeForDiffKeys!625 lt!435832 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29659 _keys!1544) from!1932) lt!435834))))

(declare-fun res!657061 () Bool)

(assert (=> start!84034 (=> (not res!657061) (not e!553448))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84034 (= res!657061 (validMask!0 mask!1948))))

(assert (=> start!84034 e!553448))

(assert (=> start!84034 true))

(declare-fun tp_is_empty!22809 () Bool)

(assert (=> start!84034 tp_is_empty!22809))

(declare-datatypes ((ValueCell!10923 0))(
  ( (ValueCellFull!10923 (v!14017 V!35395)) (EmptyCell!10923) )
))
(declare-datatypes ((array!61613 0))(
  ( (array!61614 (arr!29660 (Array (_ BitVec 32) ValueCell!10923)) (size!30140 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61613)

(declare-fun e!553444 () Bool)

(declare-fun array_inv!22809 (array!61613) Bool)

(assert (=> start!84034 (and (array_inv!22809 _values!1278) e!553444)))

(assert (=> start!84034 tp!68806))

(declare-fun array_inv!22810 (array!61611) Bool)

(assert (=> start!84034 (array_inv!22810 _keys!1544)))

(declare-fun b!981711 () Bool)

(declare-fun res!657058 () Bool)

(assert (=> b!981711 (=> (not res!657058) (not e!553448))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!981711 (= res!657058 (validKeyInArray!0 (select (arr!29659 _keys!1544) from!1932)))))

(declare-fun b!981712 () Bool)

(declare-fun e!553445 () Bool)

(assert (=> b!981712 (= e!553445 tp_is_empty!22809)))

(declare-fun b!981713 () Bool)

(declare-fun e!553443 () Bool)

(declare-fun mapRes!36242 () Bool)

(assert (=> b!981713 (= e!553444 (and e!553443 mapRes!36242))))

(declare-fun condMapEmpty!36242 () Bool)

(declare-fun mapDefault!36242 () ValueCell!10923)

(assert (=> b!981713 (= condMapEmpty!36242 (= (arr!29660 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10923)) mapDefault!36242)))))

(declare-fun b!981714 () Bool)

(declare-fun res!657062 () Bool)

(assert (=> b!981714 (=> (not res!657062) (not e!553448))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!981714 (= res!657062 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!981715 () Bool)

(assert (=> b!981715 (= e!553448 e!553447)))

(declare-fun res!657060 () Bool)

(assert (=> b!981715 (=> (not res!657060) (not e!553447))))

(assert (=> b!981715 (= res!657060 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29659 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15395 (ValueCell!10923 V!35395) V!35395)

(declare-fun dynLambda!1792 (Int (_ BitVec 64)) V!35395)

(assert (=> b!981715 (= lt!435834 (get!15395 (select (arr!29660 _values!1278) from!1932) (dynLambda!1792 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35395)

(declare-fun getCurrentListMapNoExtraKeys!3419 (array!61611 array!61613 (_ BitVec 32) (_ BitVec 32) V!35395 V!35395 (_ BitVec 32) Int) ListLongMap!13489)

(assert (=> b!981715 (= lt!435832 (getCurrentListMapNoExtraKeys!3419 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun mapNonEmpty!36242 () Bool)

(declare-fun tp!68807 () Bool)

(assert (=> mapNonEmpty!36242 (= mapRes!36242 (and tp!68807 e!553445))))

(declare-fun mapKey!36242 () (_ BitVec 32))

(declare-fun mapRest!36242 () (Array (_ BitVec 32) ValueCell!10923))

(declare-fun mapValue!36242 () ValueCell!10923)

(assert (=> mapNonEmpty!36242 (= (arr!29660 _values!1278) (store mapRest!36242 mapKey!36242 mapValue!36242))))

(declare-fun mapIsEmpty!36242 () Bool)

(assert (=> mapIsEmpty!36242 mapRes!36242))

(declare-fun b!981716 () Bool)

(declare-fun res!657057 () Bool)

(assert (=> b!981716 (=> (not res!657057) (not e!553448))))

(assert (=> b!981716 (= res!657057 (and (= (size!30140 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30139 _keys!1544) (size!30140 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!981717 () Bool)

(assert (=> b!981717 (= e!553443 tp_is_empty!22809)))

(declare-fun b!981718 () Bool)

(declare-fun res!657056 () Bool)

(assert (=> b!981718 (=> (not res!657056) (not e!553448))))

(declare-datatypes ((List!20685 0))(
  ( (Nil!20682) (Cons!20681 (h!21843 (_ BitVec 64)) (t!29404 List!20685)) )
))
(declare-fun arrayNoDuplicates!0 (array!61611 (_ BitVec 32) List!20685) Bool)

(assert (=> b!981718 (= res!657056 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20682))))

(declare-fun b!981719 () Bool)

(declare-fun res!657059 () Bool)

(assert (=> b!981719 (=> (not res!657059) (not e!553448))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61611 (_ BitVec 32)) Bool)

(assert (=> b!981719 (= res!657059 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(assert (= (and start!84034 res!657061) b!981716))

(assert (= (and b!981716 res!657057) b!981719))

(assert (= (and b!981719 res!657059) b!981718))

(assert (= (and b!981718 res!657056) b!981709))

(assert (= (and b!981709 res!657063) b!981711))

(assert (= (and b!981711 res!657058) b!981714))

(assert (= (and b!981714 res!657062) b!981715))

(assert (= (and b!981715 res!657060) b!981710))

(assert (= (and b!981713 condMapEmpty!36242) mapIsEmpty!36242))

(assert (= (and b!981713 (not condMapEmpty!36242)) mapNonEmpty!36242))

(get-info :version)

(assert (= (and mapNonEmpty!36242 ((_ is ValueCellFull!10923) mapValue!36242)) b!981712))

(assert (= (and b!981713 ((_ is ValueCellFull!10923) mapDefault!36242)) b!981717))

(assert (= start!84034 b!981713))

(declare-fun b_lambda!14829 () Bool)

(assert (=> (not b_lambda!14829) (not b!981715)))

(declare-fun t!29402 () Bool)

(declare-fun tb!6569 () Bool)

(assert (=> (and start!84034 (= defaultEntry!1281 defaultEntry!1281) t!29402) tb!6569))

(declare-fun result!13119 () Bool)

(assert (=> tb!6569 (= result!13119 tp_is_empty!22809)))

(assert (=> b!981715 t!29402))

(declare-fun b_and!31625 () Bool)

(assert (= b_and!31623 (and (=> t!29402 result!13119) b_and!31625)))

(declare-fun m!909171 () Bool)

(assert (=> mapNonEmpty!36242 m!909171))

(declare-fun m!909173 () Bool)

(assert (=> b!981715 m!909173))

(declare-fun m!909175 () Bool)

(assert (=> b!981715 m!909175))

(declare-fun m!909177 () Bool)

(assert (=> b!981715 m!909177))

(declare-fun m!909179 () Bool)

(assert (=> b!981715 m!909179))

(assert (=> b!981715 m!909175))

(assert (=> b!981715 m!909179))

(declare-fun m!909181 () Bool)

(assert (=> b!981715 m!909181))

(declare-fun m!909183 () Bool)

(assert (=> b!981719 m!909183))

(assert (=> b!981711 m!909173))

(assert (=> b!981711 m!909173))

(declare-fun m!909185 () Bool)

(assert (=> b!981711 m!909185))

(assert (=> b!981710 m!909173))

(assert (=> b!981710 m!909173))

(declare-fun m!909187 () Bool)

(assert (=> b!981710 m!909187))

(declare-fun m!909189 () Bool)

(assert (=> b!981710 m!909189))

(declare-fun m!909191 () Bool)

(assert (=> b!981710 m!909191))

(assert (=> b!981710 m!909189))

(declare-fun m!909193 () Bool)

(assert (=> b!981710 m!909193))

(declare-fun m!909195 () Bool)

(assert (=> b!981710 m!909195))

(assert (=> b!981710 m!909193))

(declare-fun m!909197 () Bool)

(assert (=> b!981718 m!909197))

(declare-fun m!909199 () Bool)

(assert (=> start!84034 m!909199))

(declare-fun m!909201 () Bool)

(assert (=> start!84034 m!909201))

(declare-fun m!909203 () Bool)

(assert (=> start!84034 m!909203))

(check-sat (not b!981710) (not start!84034) (not b!981718) (not mapNonEmpty!36242) (not b_next!19761) tp_is_empty!22809 b_and!31625 (not b!981711) (not b_lambda!14829) (not b!981719) (not b!981715))
(check-sat b_and!31625 (not b_next!19761))
