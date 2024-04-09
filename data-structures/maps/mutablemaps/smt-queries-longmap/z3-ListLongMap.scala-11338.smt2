; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131966 () Bool)

(assert start!131966)

(declare-fun b_free!31647 () Bool)

(declare-fun b_next!31647 () Bool)

(assert (=> start!131966 (= b_free!31647 (not b_next!31647))))

(declare-fun tp!111194 () Bool)

(declare-fun b_and!51067 () Bool)

(assert (=> start!131966 (= tp!111194 b_and!51067)))

(declare-fun b!1544850 () Bool)

(declare-fun res!1059622 () Bool)

(declare-fun e!859918 () Bool)

(assert (=> b!1544850 (=> (not res!1059622) (not e!859918))))

(declare-datatypes ((array!103019 0))(
  ( (array!103020 (arr!49707 (Array (_ BitVec 32) (_ BitVec 64))) (size!50258 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103019)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103019 (_ BitVec 32)) Bool)

(assert (=> b!1544850 (= res!1059622 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun bm!69074 () Bool)

(declare-datatypes ((V!59007 0))(
  ( (V!59008 (val!19039 Int)) )
))
(declare-datatypes ((tuple2!24606 0))(
  ( (tuple2!24607 (_1!12313 (_ BitVec 64)) (_2!12313 V!59007)) )
))
(declare-datatypes ((List!36125 0))(
  ( (Nil!36122) (Cons!36121 (h!37567 tuple2!24606) (t!50826 List!36125)) )
))
(declare-datatypes ((ListLongMap!22227 0))(
  ( (ListLongMap!22228 (toList!11129 List!36125)) )
))
(declare-fun call!69080 () ListLongMap!22227)

(declare-fun call!69079 () ListLongMap!22227)

(assert (=> bm!69074 (= call!69080 call!69079)))

(declare-fun b!1544851 () Bool)

(declare-fun e!859919 () ListLongMap!22227)

(declare-fun e!859916 () ListLongMap!22227)

(assert (=> b!1544851 (= e!859919 e!859916)))

(declare-fun c!141474 () Bool)

(declare-fun lt!666137 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1544851 (= c!141474 (and (not lt!666137) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun zeroValue!436 () V!59007)

(declare-fun defaultEntry!478 () Int)

(declare-fun bm!69075 () Bool)

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18051 0))(
  ( (ValueCellFull!18051 (v!21837 V!59007)) (EmptyCell!18051) )
))
(declare-datatypes ((array!103021 0))(
  ( (array!103022 (arr!49708 (Array (_ BitVec 32) ValueCell!18051)) (size!50259 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103021)

(declare-fun minValue!436 () V!59007)

(declare-fun getCurrentListMapNoExtraKeys!6578 (array!103019 array!103021 (_ BitVec 32) (_ BitVec 32) V!59007 V!59007 (_ BitVec 32) Int) ListLongMap!22227)

(assert (=> bm!69075 (= call!69079 (getCurrentListMapNoExtraKeys!6578 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1544852 () Bool)

(declare-fun res!1059623 () Bool)

(assert (=> b!1544852 (=> (not res!1059623) (not e!859918))))

(declare-datatypes ((List!36126 0))(
  ( (Nil!36123) (Cons!36122 (h!37568 (_ BitVec 64)) (t!50827 List!36126)) )
))
(declare-fun arrayNoDuplicates!0 (array!103019 (_ BitVec 32) List!36126) Bool)

(assert (=> b!1544852 (= res!1059623 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36123))))

(declare-fun res!1059621 () Bool)

(assert (=> start!131966 (=> (not res!1059621) (not e!859918))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131966 (= res!1059621 (validMask!0 mask!926))))

(assert (=> start!131966 e!859918))

(declare-fun array_inv!38589 (array!103019) Bool)

(assert (=> start!131966 (array_inv!38589 _keys!618)))

(declare-fun tp_is_empty!37923 () Bool)

(assert (=> start!131966 tp_is_empty!37923))

(assert (=> start!131966 true))

(assert (=> start!131966 tp!111194))

(declare-fun e!859921 () Bool)

(declare-fun array_inv!38590 (array!103021) Bool)

(assert (=> start!131966 (and (array_inv!38590 _values!470) e!859921)))

(declare-fun mapIsEmpty!58588 () Bool)

(declare-fun mapRes!58588 () Bool)

(assert (=> mapIsEmpty!58588 mapRes!58588))

(declare-fun b!1544853 () Bool)

(declare-fun e!859914 () ListLongMap!22227)

(declare-fun call!69081 () ListLongMap!22227)

(assert (=> b!1544853 (= e!859914 call!69081)))

(declare-fun bm!69076 () Bool)

(declare-fun call!69077 () ListLongMap!22227)

(declare-fun call!69078 () ListLongMap!22227)

(assert (=> bm!69076 (= call!69077 call!69078)))

(declare-fun bm!69077 () Bool)

(assert (=> bm!69077 (= call!69081 call!69080)))

(declare-fun b!1544854 () Bool)

(declare-fun e!859917 () Bool)

(assert (=> b!1544854 (= e!859921 (and e!859917 mapRes!58588))))

(declare-fun condMapEmpty!58588 () Bool)

(declare-fun mapDefault!58588 () ValueCell!18051)

(assert (=> b!1544854 (= condMapEmpty!58588 (= (arr!49708 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18051)) mapDefault!58588)))))

(declare-fun b!1544855 () Bool)

(declare-fun +!4861 (ListLongMap!22227 tuple2!24606) ListLongMap!22227)

(assert (=> b!1544855 (= e!859919 (+!4861 call!69078 (tuple2!24607 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1544856 () Bool)

(declare-fun res!1059620 () Bool)

(assert (=> b!1544856 (=> (not res!1059620) (not e!859918))))

(assert (=> b!1544856 (= res!1059620 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50258 _keys!618))))))

(declare-fun mapNonEmpty!58588 () Bool)

(declare-fun tp!111193 () Bool)

(declare-fun e!859920 () Bool)

(assert (=> mapNonEmpty!58588 (= mapRes!58588 (and tp!111193 e!859920))))

(declare-fun mapValue!58588 () ValueCell!18051)

(declare-fun mapKey!58588 () (_ BitVec 32))

(declare-fun mapRest!58588 () (Array (_ BitVec 32) ValueCell!18051))

(assert (=> mapNonEmpty!58588 (= (arr!49708 _values!470) (store mapRest!58588 mapKey!58588 mapValue!58588))))

(declare-fun b!1544857 () Bool)

(assert (=> b!1544857 (= e!859917 tp_is_empty!37923)))

(declare-fun c!141476 () Bool)

(declare-fun bm!69078 () Bool)

(assert (=> bm!69078 (= call!69078 (+!4861 (ite c!141476 call!69079 (ite c!141474 call!69080 call!69081)) (ite (or c!141476 c!141474) (tuple2!24607 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24607 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1544858 () Bool)

(declare-fun res!1059619 () Bool)

(assert (=> b!1544858 (=> (not res!1059619) (not e!859918))))

(assert (=> b!1544858 (= res!1059619 (and (= (size!50259 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50258 _keys!618) (size!50259 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1544859 () Bool)

(assert (=> b!1544859 (= e!859916 call!69077)))

(declare-fun b!1544860 () Bool)

(declare-fun c!141475 () Bool)

(assert (=> b!1544860 (= c!141475 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666137))))

(assert (=> b!1544860 (= e!859916 e!859914)))

(declare-fun b!1544861 () Bool)

(assert (=> b!1544861 (= e!859920 tp_is_empty!37923)))

(declare-fun b!1544862 () Bool)

(assert (=> b!1544862 (= e!859918 false)))

(declare-fun lt!666136 () ListLongMap!22227)

(assert (=> b!1544862 (= lt!666136 e!859919)))

(assert (=> b!1544862 (= c!141476 (and (not lt!666137) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1544862 (= lt!666137 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1544863 () Bool)

(assert (=> b!1544863 (= e!859914 call!69077)))

(assert (= (and start!131966 res!1059621) b!1544858))

(assert (= (and b!1544858 res!1059619) b!1544850))

(assert (= (and b!1544850 res!1059622) b!1544852))

(assert (= (and b!1544852 res!1059623) b!1544856))

(assert (= (and b!1544856 res!1059620) b!1544862))

(assert (= (and b!1544862 c!141476) b!1544855))

(assert (= (and b!1544862 (not c!141476)) b!1544851))

(assert (= (and b!1544851 c!141474) b!1544859))

(assert (= (and b!1544851 (not c!141474)) b!1544860))

(assert (= (and b!1544860 c!141475) b!1544863))

(assert (= (and b!1544860 (not c!141475)) b!1544853))

(assert (= (or b!1544863 b!1544853) bm!69077))

(assert (= (or b!1544859 bm!69077) bm!69074))

(assert (= (or b!1544859 b!1544863) bm!69076))

(assert (= (or b!1544855 bm!69074) bm!69075))

(assert (= (or b!1544855 bm!69076) bm!69078))

(assert (= (and b!1544854 condMapEmpty!58588) mapIsEmpty!58588))

(assert (= (and b!1544854 (not condMapEmpty!58588)) mapNonEmpty!58588))

(get-info :version)

(assert (= (and mapNonEmpty!58588 ((_ is ValueCellFull!18051) mapValue!58588)) b!1544861))

(assert (= (and b!1544854 ((_ is ValueCellFull!18051) mapDefault!58588)) b!1544857))

(assert (= start!131966 b!1544854))

(declare-fun m!1425433 () Bool)

(assert (=> b!1544850 m!1425433))

(declare-fun m!1425435 () Bool)

(assert (=> start!131966 m!1425435))

(declare-fun m!1425437 () Bool)

(assert (=> start!131966 m!1425437))

(declare-fun m!1425439 () Bool)

(assert (=> start!131966 m!1425439))

(declare-fun m!1425441 () Bool)

(assert (=> b!1544852 m!1425441))

(declare-fun m!1425443 () Bool)

(assert (=> mapNonEmpty!58588 m!1425443))

(declare-fun m!1425445 () Bool)

(assert (=> bm!69078 m!1425445))

(declare-fun m!1425447 () Bool)

(assert (=> b!1544855 m!1425447))

(declare-fun m!1425449 () Bool)

(assert (=> bm!69075 m!1425449))

(check-sat (not b_next!31647) tp_is_empty!37923 (not bm!69075) (not b!1544852) b_and!51067 (not start!131966) (not mapNonEmpty!58588) (not b!1544850) (not b!1544855) (not bm!69078))
(check-sat b_and!51067 (not b_next!31647))
