; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38732 () Bool)

(assert start!38732)

(declare-fun b_free!9261 () Bool)

(declare-fun b_next!9261 () Bool)

(assert (=> start!38732 (= b_free!9261 (not b_next!9261))))

(declare-fun tp!32906 () Bool)

(declare-fun b_and!16665 () Bool)

(assert (=> start!38732 (= tp!32906 b_and!16665)))

(declare-fun b!402919 () Bool)

(declare-fun res!232231 () Bool)

(declare-fun e!242639 () Bool)

(assert (=> b!402919 (=> (not res!232231) (not e!242639))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!24157 0))(
  ( (array!24158 (arr!11525 (Array (_ BitVec 32) (_ BitVec 64))) (size!11877 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24157)

(assert (=> b!402919 (= res!232231 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11877 _keys!709))))))

(declare-fun b!402920 () Bool)

(declare-fun res!232235 () Bool)

(assert (=> b!402920 (=> (not res!232235) (not e!242639))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!402920 (= res!232235 (validKeyInArray!0 k0!794))))

(declare-datatypes ((V!14629 0))(
  ( (V!14630 (val!5116 Int)) )
))
(declare-datatypes ((tuple2!6742 0))(
  ( (tuple2!6743 (_1!3381 (_ BitVec 64)) (_2!3381 V!14629)) )
))
(declare-datatypes ((List!6684 0))(
  ( (Nil!6681) (Cons!6680 (h!7536 tuple2!6742) (t!11866 List!6684)) )
))
(declare-datatypes ((ListLongMap!5669 0))(
  ( (ListLongMap!5670 (toList!2850 List!6684)) )
))
(declare-fun call!28445 () ListLongMap!5669)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4728 0))(
  ( (ValueCellFull!4728 (v!7359 V!14629)) (EmptyCell!4728) )
))
(declare-datatypes ((array!24159 0))(
  ( (array!24160 (arr!11526 (Array (_ BitVec 32) ValueCell!4728)) (size!11878 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24159)

(declare-fun zeroValue!515 () V!14629)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun bm!28441 () Bool)

(declare-fun minValue!515 () V!14629)

(declare-fun getCurrentListMapNoExtraKeys!1061 (array!24157 array!24159 (_ BitVec 32) (_ BitVec 32) V!14629 V!14629 (_ BitVec 32) Int) ListLongMap!5669)

(assert (=> bm!28441 (= call!28445 (getCurrentListMapNoExtraKeys!1061 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!16836 () Bool)

(declare-fun mapRes!16836 () Bool)

(declare-fun tp!32907 () Bool)

(declare-fun e!242640 () Bool)

(assert (=> mapNonEmpty!16836 (= mapRes!16836 (and tp!32907 e!242640))))

(declare-fun mapRest!16836 () (Array (_ BitVec 32) ValueCell!4728))

(declare-fun mapKey!16836 () (_ BitVec 32))

(declare-fun mapValue!16836 () ValueCell!4728)

(assert (=> mapNonEmpty!16836 (= (arr!11526 _values!549) (store mapRest!16836 mapKey!16836 mapValue!16836))))

(declare-fun mapIsEmpty!16836 () Bool)

(assert (=> mapIsEmpty!16836 mapRes!16836))

(declare-fun res!232229 () Bool)

(assert (=> start!38732 (=> (not res!232229) (not e!242639))))

(assert (=> start!38732 (= res!232229 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11877 _keys!709))))))

(assert (=> start!38732 e!242639))

(declare-fun tp_is_empty!10143 () Bool)

(assert (=> start!38732 tp_is_empty!10143))

(assert (=> start!38732 tp!32906))

(assert (=> start!38732 true))

(declare-fun e!242636 () Bool)

(declare-fun array_inv!8424 (array!24159) Bool)

(assert (=> start!38732 (and (array_inv!8424 _values!549) e!242636)))

(declare-fun array_inv!8425 (array!24157) Bool)

(assert (=> start!38732 (array_inv!8425 _keys!709)))

(declare-fun b!402921 () Bool)

(declare-fun res!232228 () Bool)

(assert (=> b!402921 (=> (not res!232228) (not e!242639))))

(assert (=> b!402921 (= res!232228 (or (= (select (arr!11525 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11525 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!402922 () Bool)

(declare-fun res!232236 () Bool)

(assert (=> b!402922 (=> (not res!232236) (not e!242639))))

(declare-datatypes ((List!6685 0))(
  ( (Nil!6682) (Cons!6681 (h!7537 (_ BitVec 64)) (t!11867 List!6685)) )
))
(declare-fun arrayNoDuplicates!0 (array!24157 (_ BitVec 32) List!6685) Bool)

(assert (=> b!402922 (= res!232236 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6682))))

(declare-fun b!402923 () Bool)

(declare-fun e!242635 () Bool)

(declare-fun call!28444 () ListLongMap!5669)

(assert (=> b!402923 (= e!242635 (= call!28444 call!28445))))

(declare-fun b!402924 () Bool)

(declare-fun res!232233 () Bool)

(assert (=> b!402924 (=> (not res!232233) (not e!242639))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!402924 (= res!232233 (validMask!0 mask!1025))))

(declare-fun b!402925 () Bool)

(declare-fun e!242637 () Bool)

(assert (=> b!402925 (= e!242636 (and e!242637 mapRes!16836))))

(declare-fun condMapEmpty!16836 () Bool)

(declare-fun mapDefault!16836 () ValueCell!4728)

(assert (=> b!402925 (= condMapEmpty!16836 (= (arr!11526 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4728)) mapDefault!16836)))))

(declare-fun b!402926 () Bool)

(declare-fun res!232232 () Bool)

(assert (=> b!402926 (=> (not res!232232) (not e!242639))))

(assert (=> b!402926 (= res!232232 (and (= (size!11878 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11877 _keys!709) (size!11878 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!402927 () Bool)

(declare-fun res!232234 () Bool)

(assert (=> b!402927 (=> (not res!232234) (not e!242639))))

(declare-fun arrayContainsKey!0 (array!24157 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!402927 (= res!232234 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!402928 () Bool)

(declare-fun e!242641 () Bool)

(assert (=> b!402928 (= e!242641 (not true))))

(assert (=> b!402928 e!242635))

(declare-fun c!54773 () Bool)

(assert (=> b!402928 (= c!54773 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12149 0))(
  ( (Unit!12150) )
))
(declare-fun lt!187971 () Unit!12149)

(declare-fun v!412 () V!14629)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!337 (array!24157 array!24159 (_ BitVec 32) (_ BitVec 32) V!14629 V!14629 (_ BitVec 32) (_ BitVec 64) V!14629 (_ BitVec 32) Int) Unit!12149)

(assert (=> b!402928 (= lt!187971 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!337 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402929 () Bool)

(declare-fun res!232230 () Bool)

(assert (=> b!402929 (=> (not res!232230) (not e!242641))))

(declare-fun lt!187970 () array!24157)

(assert (=> b!402929 (= res!232230 (arrayNoDuplicates!0 lt!187970 #b00000000000000000000000000000000 Nil!6682))))

(declare-fun b!402930 () Bool)

(declare-fun +!1126 (ListLongMap!5669 tuple2!6742) ListLongMap!5669)

(assert (=> b!402930 (= e!242635 (= call!28444 (+!1126 call!28445 (tuple2!6743 k0!794 v!412))))))

(declare-fun b!402931 () Bool)

(assert (=> b!402931 (= e!242639 e!242641)))

(declare-fun res!232227 () Bool)

(assert (=> b!402931 (=> (not res!232227) (not e!242641))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24157 (_ BitVec 32)) Bool)

(assert (=> b!402931 (= res!232227 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187970 mask!1025))))

(assert (=> b!402931 (= lt!187970 (array!24158 (store (arr!11525 _keys!709) i!563 k0!794) (size!11877 _keys!709)))))

(declare-fun b!402932 () Bool)

(declare-fun res!232226 () Bool)

(assert (=> b!402932 (=> (not res!232226) (not e!242639))))

(assert (=> b!402932 (= res!232226 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!402933 () Bool)

(assert (=> b!402933 (= e!242640 tp_is_empty!10143)))

(declare-fun b!402934 () Bool)

(declare-fun res!232225 () Bool)

(assert (=> b!402934 (=> (not res!232225) (not e!242641))))

(assert (=> b!402934 (= res!232225 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11877 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun bm!28442 () Bool)

(assert (=> bm!28442 (= call!28444 (getCurrentListMapNoExtraKeys!1061 lt!187970 (array!24160 (store (arr!11526 _values!549) i!563 (ValueCellFull!4728 v!412)) (size!11878 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402935 () Bool)

(assert (=> b!402935 (= e!242637 tp_is_empty!10143)))

(assert (= (and start!38732 res!232229) b!402924))

(assert (= (and b!402924 res!232233) b!402926))

(assert (= (and b!402926 res!232232) b!402932))

(assert (= (and b!402932 res!232226) b!402922))

(assert (= (and b!402922 res!232236) b!402919))

(assert (= (and b!402919 res!232231) b!402920))

(assert (= (and b!402920 res!232235) b!402921))

(assert (= (and b!402921 res!232228) b!402927))

(assert (= (and b!402927 res!232234) b!402931))

(assert (= (and b!402931 res!232227) b!402929))

(assert (= (and b!402929 res!232230) b!402934))

(assert (= (and b!402934 res!232225) b!402928))

(assert (= (and b!402928 c!54773) b!402930))

(assert (= (and b!402928 (not c!54773)) b!402923))

(assert (= (or b!402930 b!402923) bm!28442))

(assert (= (or b!402930 b!402923) bm!28441))

(assert (= (and b!402925 condMapEmpty!16836) mapIsEmpty!16836))

(assert (= (and b!402925 (not condMapEmpty!16836)) mapNonEmpty!16836))

(get-info :version)

(assert (= (and mapNonEmpty!16836 ((_ is ValueCellFull!4728) mapValue!16836)) b!402933))

(assert (= (and b!402925 ((_ is ValueCellFull!4728) mapDefault!16836)) b!402935))

(assert (= start!38732 b!402925))

(declare-fun m!396259 () Bool)

(assert (=> b!402932 m!396259))

(declare-fun m!396261 () Bool)

(assert (=> b!402931 m!396261))

(declare-fun m!396263 () Bool)

(assert (=> b!402931 m!396263))

(declare-fun m!396265 () Bool)

(assert (=> b!402921 m!396265))

(declare-fun m!396267 () Bool)

(assert (=> bm!28441 m!396267))

(declare-fun m!396269 () Bool)

(assert (=> start!38732 m!396269))

(declare-fun m!396271 () Bool)

(assert (=> start!38732 m!396271))

(declare-fun m!396273 () Bool)

(assert (=> b!402922 m!396273))

(declare-fun m!396275 () Bool)

(assert (=> bm!28442 m!396275))

(declare-fun m!396277 () Bool)

(assert (=> bm!28442 m!396277))

(declare-fun m!396279 () Bool)

(assert (=> b!402927 m!396279))

(declare-fun m!396281 () Bool)

(assert (=> b!402930 m!396281))

(declare-fun m!396283 () Bool)

(assert (=> b!402920 m!396283))

(declare-fun m!396285 () Bool)

(assert (=> b!402929 m!396285))

(declare-fun m!396287 () Bool)

(assert (=> b!402924 m!396287))

(declare-fun m!396289 () Bool)

(assert (=> mapNonEmpty!16836 m!396289))

(declare-fun m!396291 () Bool)

(assert (=> b!402928 m!396291))

(check-sat (not bm!28442) (not b!402932) (not b!402920) (not bm!28441) (not start!38732) (not b!402930) (not b!402922) (not b!402931) (not b!402927) b_and!16665 (not b!402929) tp_is_empty!10143 (not b!402928) (not mapNonEmpty!16836) (not b_next!9261) (not b!402924))
(check-sat b_and!16665 (not b_next!9261))
