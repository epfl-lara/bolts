; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84046 () Bool)

(assert start!84046)

(declare-fun b_free!19773 () Bool)

(declare-fun b_next!19773 () Bool)

(assert (=> start!84046 (= b_free!19773 (not b_next!19773))))

(declare-fun tp!68843 () Bool)

(declare-fun b_and!31647 () Bool)

(assert (=> start!84046 (= tp!68843 b_and!31647)))

(declare-fun res!657205 () Bool)

(declare-fun e!553551 () Bool)

(assert (=> start!84046 (=> (not res!657205) (not e!553551))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84046 (= res!657205 (validMask!0 mask!1948))))

(assert (=> start!84046 e!553551))

(assert (=> start!84046 true))

(declare-fun tp_is_empty!22821 () Bool)

(assert (=> start!84046 tp_is_empty!22821))

(declare-datatypes ((V!35411 0))(
  ( (V!35412 (val!11461 Int)) )
))
(declare-datatypes ((ValueCell!10929 0))(
  ( (ValueCellFull!10929 (v!14023 V!35411)) (EmptyCell!10929) )
))
(declare-datatypes ((array!61633 0))(
  ( (array!61634 (arr!29670 (Array (_ BitVec 32) ValueCell!10929)) (size!30150 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61633)

(declare-fun e!553553 () Bool)

(declare-fun array_inv!22817 (array!61633) Bool)

(assert (=> start!84046 (and (array_inv!22817 _values!1278) e!553553)))

(assert (=> start!84046 tp!68843))

(declare-datatypes ((array!61635 0))(
  ( (array!61636 (arr!29671 (Array (_ BitVec 32) (_ BitVec 64))) (size!30151 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61635)

(declare-fun array_inv!22818 (array!61635) Bool)

(assert (=> start!84046 (array_inv!22818 _keys!1544)))

(declare-fun mapIsEmpty!36260 () Bool)

(declare-fun mapRes!36260 () Bool)

(assert (=> mapIsEmpty!36260 mapRes!36260))

(declare-fun b!981919 () Bool)

(declare-fun res!657201 () Bool)

(assert (=> b!981919 (=> (not res!657201) (not e!553551))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!981919 (= res!657201 (validKeyInArray!0 (select (arr!29671 _keys!1544) from!1932)))))

(declare-fun b!981920 () Bool)

(declare-fun res!657200 () Bool)

(assert (=> b!981920 (=> (not res!657200) (not e!553551))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61635 (_ BitVec 32)) Bool)

(assert (=> b!981920 (= res!657200 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!981921 () Bool)

(declare-fun e!553554 () Bool)

(assert (=> b!981921 (= e!553554 tp_is_empty!22821)))

(declare-fun b!981922 () Bool)

(declare-fun res!657207 () Bool)

(assert (=> b!981922 (=> (not res!657207) (not e!553551))))

(declare-datatypes ((List!20693 0))(
  ( (Nil!20690) (Cons!20689 (h!21851 (_ BitVec 64)) (t!29424 List!20693)) )
))
(declare-fun arrayNoDuplicates!0 (array!61635 (_ BitVec 32) List!20693) Bool)

(assert (=> b!981922 (= res!657207 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20690))))

(declare-fun b!981923 () Bool)

(declare-fun e!553552 () Bool)

(assert (=> b!981923 (= e!553551 e!553552)))

(declare-fun res!657202 () Bool)

(assert (=> b!981923 (=> (not res!657202) (not e!553552))))

(assert (=> b!981923 (= res!657202 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29671 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun lt!435922 () V!35411)

(declare-fun get!15403 (ValueCell!10929 V!35411) V!35411)

(declare-fun dynLambda!1796 (Int (_ BitVec 64)) V!35411)

(assert (=> b!981923 (= lt!435922 (get!15403 (select (arr!29670 _values!1278) from!1932) (dynLambda!1796 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35411)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun zeroValue!1220 () V!35411)

(declare-datatypes ((tuple2!14786 0))(
  ( (tuple2!14787 (_1!7403 (_ BitVec 64)) (_2!7403 V!35411)) )
))
(declare-datatypes ((List!20694 0))(
  ( (Nil!20691) (Cons!20690 (h!21852 tuple2!14786) (t!29425 List!20694)) )
))
(declare-datatypes ((ListLongMap!13497 0))(
  ( (ListLongMap!13498 (toList!6764 List!20694)) )
))
(declare-fun lt!435923 () ListLongMap!13497)

(declare-fun getCurrentListMapNoExtraKeys!3423 (array!61635 array!61633 (_ BitVec 32) (_ BitVec 32) V!35411 V!35411 (_ BitVec 32) Int) ListLongMap!13497)

(assert (=> b!981923 (= lt!435923 (getCurrentListMapNoExtraKeys!3423 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!981924 () Bool)

(declare-fun res!657206 () Bool)

(assert (=> b!981924 (=> (not res!657206) (not e!553551))))

(assert (=> b!981924 (= res!657206 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30151 _keys!1544))))))

(declare-fun b!981925 () Bool)

(assert (=> b!981925 (= e!553552 (not true))))

(declare-fun lt!435925 () tuple2!14786)

(declare-fun lt!435921 () tuple2!14786)

(declare-fun +!2967 (ListLongMap!13497 tuple2!14786) ListLongMap!13497)

(assert (=> b!981925 (= (+!2967 (+!2967 lt!435923 lt!435925) lt!435921) (+!2967 (+!2967 lt!435923 lt!435921) lt!435925))))

(assert (=> b!981925 (= lt!435921 (tuple2!14787 (select (arr!29671 _keys!1544) from!1932) lt!435922))))

(assert (=> b!981925 (= lt!435925 (tuple2!14787 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32609 0))(
  ( (Unit!32610) )
))
(declare-fun lt!435924 () Unit!32609)

(declare-fun addCommutativeForDiffKeys!629 (ListLongMap!13497 (_ BitVec 64) V!35411 (_ BitVec 64) V!35411) Unit!32609)

(assert (=> b!981925 (= lt!435924 (addCommutativeForDiffKeys!629 lt!435923 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29671 _keys!1544) from!1932) lt!435922))))

(declare-fun b!981926 () Bool)

(declare-fun res!657204 () Bool)

(assert (=> b!981926 (=> (not res!657204) (not e!553551))))

(assert (=> b!981926 (= res!657204 (and (= (size!30150 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30151 _keys!1544) (size!30150 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!981927 () Bool)

(declare-fun res!657203 () Bool)

(assert (=> b!981927 (=> (not res!657203) (not e!553551))))

(assert (=> b!981927 (= res!657203 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!981928 () Bool)

(declare-fun e!553555 () Bool)

(assert (=> b!981928 (= e!553555 tp_is_empty!22821)))

(declare-fun mapNonEmpty!36260 () Bool)

(declare-fun tp!68842 () Bool)

(assert (=> mapNonEmpty!36260 (= mapRes!36260 (and tp!68842 e!553555))))

(declare-fun mapKey!36260 () (_ BitVec 32))

(declare-fun mapRest!36260 () (Array (_ BitVec 32) ValueCell!10929))

(declare-fun mapValue!36260 () ValueCell!10929)

(assert (=> mapNonEmpty!36260 (= (arr!29670 _values!1278) (store mapRest!36260 mapKey!36260 mapValue!36260))))

(declare-fun b!981929 () Bool)

(assert (=> b!981929 (= e!553553 (and e!553554 mapRes!36260))))

(declare-fun condMapEmpty!36260 () Bool)

(declare-fun mapDefault!36260 () ValueCell!10929)

(assert (=> b!981929 (= condMapEmpty!36260 (= (arr!29670 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10929)) mapDefault!36260)))))

(assert (= (and start!84046 res!657205) b!981926))

(assert (= (and b!981926 res!657204) b!981920))

(assert (= (and b!981920 res!657200) b!981922))

(assert (= (and b!981922 res!657207) b!981924))

(assert (= (and b!981924 res!657206) b!981919))

(assert (= (and b!981919 res!657201) b!981927))

(assert (= (and b!981927 res!657203) b!981923))

(assert (= (and b!981923 res!657202) b!981925))

(assert (= (and b!981929 condMapEmpty!36260) mapIsEmpty!36260))

(assert (= (and b!981929 (not condMapEmpty!36260)) mapNonEmpty!36260))

(get-info :version)

(assert (= (and mapNonEmpty!36260 ((_ is ValueCellFull!10929) mapValue!36260)) b!981928))

(assert (= (and b!981929 ((_ is ValueCellFull!10929) mapDefault!36260)) b!981921))

(assert (= start!84046 b!981929))

(declare-fun b_lambda!14841 () Bool)

(assert (=> (not b_lambda!14841) (not b!981923)))

(declare-fun t!29423 () Bool)

(declare-fun tb!6581 () Bool)

(assert (=> (and start!84046 (= defaultEntry!1281 defaultEntry!1281) t!29423) tb!6581))

(declare-fun result!13143 () Bool)

(assert (=> tb!6581 (= result!13143 tp_is_empty!22821)))

(assert (=> b!981923 t!29423))

(declare-fun b_and!31649 () Bool)

(assert (= b_and!31647 (and (=> t!29423 result!13143) b_and!31649)))

(declare-fun m!909375 () Bool)

(assert (=> b!981920 m!909375))

(declare-fun m!909377 () Bool)

(assert (=> b!981922 m!909377))

(declare-fun m!909379 () Bool)

(assert (=> b!981925 m!909379))

(declare-fun m!909381 () Bool)

(assert (=> b!981925 m!909381))

(declare-fun m!909383 () Bool)

(assert (=> b!981925 m!909383))

(assert (=> b!981925 m!909383))

(declare-fun m!909385 () Bool)

(assert (=> b!981925 m!909385))

(declare-fun m!909387 () Bool)

(assert (=> b!981925 m!909387))

(assert (=> b!981925 m!909387))

(declare-fun m!909389 () Bool)

(assert (=> b!981925 m!909389))

(assert (=> b!981925 m!909379))

(assert (=> b!981919 m!909379))

(assert (=> b!981919 m!909379))

(declare-fun m!909391 () Bool)

(assert (=> b!981919 m!909391))

(declare-fun m!909393 () Bool)

(assert (=> start!84046 m!909393))

(declare-fun m!909395 () Bool)

(assert (=> start!84046 m!909395))

(declare-fun m!909397 () Bool)

(assert (=> start!84046 m!909397))

(declare-fun m!909399 () Bool)

(assert (=> mapNonEmpty!36260 m!909399))

(assert (=> b!981923 m!909379))

(declare-fun m!909401 () Bool)

(assert (=> b!981923 m!909401))

(declare-fun m!909403 () Bool)

(assert (=> b!981923 m!909403))

(declare-fun m!909405 () Bool)

(assert (=> b!981923 m!909405))

(assert (=> b!981923 m!909401))

(assert (=> b!981923 m!909405))

(declare-fun m!909407 () Bool)

(assert (=> b!981923 m!909407))

(check-sat (not b!981923) (not b_lambda!14841) (not b!981925) (not b!981919) (not b!981920) (not start!84046) b_and!31649 (not mapNonEmpty!36260) (not b_next!19773) (not b!981922) tp_is_empty!22821)
(check-sat b_and!31649 (not b_next!19773))
