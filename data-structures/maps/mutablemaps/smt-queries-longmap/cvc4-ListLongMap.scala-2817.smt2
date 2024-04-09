; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40824 () Bool)

(assert start!40824)

(declare-fun b_free!10805 () Bool)

(declare-fun b_next!10805 () Bool)

(assert (=> start!40824 (= b_free!10805 (not b_next!10805))))

(declare-fun tp!38238 () Bool)

(declare-fun b_and!18915 () Bool)

(assert (=> start!40824 (= tp!38238 b_and!18915)))

(declare-datatypes ((V!17295 0))(
  ( (V!17296 (val!6116 Int)) )
))
(declare-fun minValue!515 () V!17295)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5728 0))(
  ( (ValueCellFull!5728 (v!8371 V!17295)) (EmptyCell!5728) )
))
(declare-datatypes ((array!28053 0))(
  ( (array!28054 (arr!13468 (Array (_ BitVec 32) ValueCell!5728)) (size!13820 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28053)

(declare-fun zeroValue!515 () V!17295)

(declare-fun bm!30022 () Bool)

(declare-datatypes ((tuple2!8004 0))(
  ( (tuple2!8005 (_1!4012 (_ BitVec 64)) (_2!4012 V!17295)) )
))
(declare-datatypes ((List!8106 0))(
  ( (Nil!8103) (Cons!8102 (h!8958 tuple2!8004) (t!13942 List!8106)) )
))
(declare-datatypes ((ListLongMap!6931 0))(
  ( (ListLongMap!6932 (toList!3481 List!8106)) )
))
(declare-fun call!30026 () ListLongMap!6931)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!28055 0))(
  ( (array!28056 (arr!13469 (Array (_ BitVec 32) (_ BitVec 64))) (size!13821 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28055)

(declare-fun lt!205590 () array!28055)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun c!56081 () Bool)

(declare-fun lt!205586 () array!28053)

(declare-fun getCurrentListMapNoExtraKeys!1657 (array!28055 array!28053 (_ BitVec 32) (_ BitVec 32) V!17295 V!17295 (_ BitVec 32) Int) ListLongMap!6931)

(assert (=> bm!30022 (= call!30026 (getCurrentListMapNoExtraKeys!1657 (ite c!56081 lt!205590 _keys!709) (ite c!56081 lt!205586 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun e!265116 () Bool)

(declare-fun v!412 () V!17295)

(declare-fun b!452925 () Bool)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun call!30025 () ListLongMap!6931)

(declare-fun +!1546 (ListLongMap!6931 tuple2!8004) ListLongMap!6931)

(assert (=> b!452925 (= e!265116 (= call!30026 (+!1546 call!30025 (tuple2!8005 k!794 v!412))))))

(declare-fun b!452926 () Bool)

(declare-fun res!269928 () Bool)

(declare-fun e!265115 () Bool)

(assert (=> b!452926 (=> (not res!269928) (not e!265115))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!452926 (= res!269928 (validKeyInArray!0 k!794))))

(declare-fun res!269934 () Bool)

(assert (=> start!40824 (=> (not res!269934) (not e!265115))))

(assert (=> start!40824 (= res!269934 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13821 _keys!709))))))

(assert (=> start!40824 e!265115))

(declare-fun tp_is_empty!12143 () Bool)

(assert (=> start!40824 tp_is_empty!12143))

(assert (=> start!40824 tp!38238))

(assert (=> start!40824 true))

(declare-fun e!265117 () Bool)

(declare-fun array_inv!9752 (array!28053) Bool)

(assert (=> start!40824 (and (array_inv!9752 _values!549) e!265117)))

(declare-fun array_inv!9753 (array!28055) Bool)

(assert (=> start!40824 (array_inv!9753 _keys!709)))

(declare-fun mapNonEmpty!19851 () Bool)

(declare-fun mapRes!19851 () Bool)

(declare-fun tp!38237 () Bool)

(declare-fun e!265114 () Bool)

(assert (=> mapNonEmpty!19851 (= mapRes!19851 (and tp!38237 e!265114))))

(declare-fun mapRest!19851 () (Array (_ BitVec 32) ValueCell!5728))

(declare-fun mapValue!19851 () ValueCell!5728)

(declare-fun mapKey!19851 () (_ BitVec 32))

(assert (=> mapNonEmpty!19851 (= (arr!13468 _values!549) (store mapRest!19851 mapKey!19851 mapValue!19851))))

(declare-fun b!452927 () Bool)

(declare-fun res!269929 () Bool)

(assert (=> b!452927 (=> (not res!269929) (not e!265115))))

(declare-fun arrayContainsKey!0 (array!28055 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!452927 (= res!269929 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!452928 () Bool)

(declare-fun res!269935 () Bool)

(assert (=> b!452928 (=> (not res!269935) (not e!265115))))

(assert (=> b!452928 (= res!269935 (and (= (size!13820 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13821 _keys!709) (size!13820 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!452929 () Bool)

(declare-fun e!265118 () Bool)

(assert (=> b!452929 (= e!265115 e!265118)))

(declare-fun res!269923 () Bool)

(assert (=> b!452929 (=> (not res!269923) (not e!265118))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28055 (_ BitVec 32)) Bool)

(assert (=> b!452929 (= res!269923 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!205590 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!452929 (= lt!205590 (array!28056 (store (arr!13469 _keys!709) i!563 k!794) (size!13821 _keys!709)))))

(declare-fun b!452930 () Bool)

(declare-fun res!269933 () Bool)

(assert (=> b!452930 (=> (not res!269933) (not e!265115))))

(assert (=> b!452930 (= res!269933 (or (= (select (arr!13469 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13469 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!452931 () Bool)

(declare-fun res!269926 () Bool)

(assert (=> b!452931 (=> (not res!269926) (not e!265118))))

(declare-datatypes ((List!8107 0))(
  ( (Nil!8104) (Cons!8103 (h!8959 (_ BitVec 64)) (t!13943 List!8107)) )
))
(declare-fun arrayNoDuplicates!0 (array!28055 (_ BitVec 32) List!8107) Bool)

(assert (=> b!452931 (= res!269926 (arrayNoDuplicates!0 lt!205590 #b00000000000000000000000000000000 Nil!8104))))

(declare-fun b!452932 () Bool)

(declare-fun res!269930 () Bool)

(assert (=> b!452932 (=> (not res!269930) (not e!265115))))

(assert (=> b!452932 (= res!269930 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13821 _keys!709))))))

(declare-fun lt!205589 () ListLongMap!6931)

(declare-fun b!452933 () Bool)

(declare-fun lt!205581 () ListLongMap!6931)

(declare-fun e!265122 () Bool)

(assert (=> b!452933 (= e!265122 (= lt!205581 (+!1546 lt!205589 (tuple2!8005 k!794 v!412))))))

(declare-fun lt!205582 () tuple2!8004)

(declare-fun lt!205580 () ListLongMap!6931)

(declare-fun lt!205588 () V!17295)

(assert (=> b!452933 (= (+!1546 lt!205580 lt!205582) (+!1546 (+!1546 lt!205580 (tuple2!8005 k!794 lt!205588)) lt!205582))))

(declare-fun lt!205585 () V!17295)

(assert (=> b!452933 (= lt!205582 (tuple2!8005 k!794 lt!205585))))

(declare-datatypes ((Unit!13191 0))(
  ( (Unit!13192) )
))
(declare-fun lt!205584 () Unit!13191)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!90 (ListLongMap!6931 (_ BitVec 64) V!17295 V!17295) Unit!13191)

(assert (=> b!452933 (= lt!205584 (addSameAsAddTwiceSameKeyDiffValues!90 lt!205580 k!794 lt!205588 lt!205585))))

(declare-fun lt!205587 () V!17295)

(declare-fun get!6653 (ValueCell!5728 V!17295) V!17295)

(assert (=> b!452933 (= lt!205588 (get!6653 (select (arr!13468 _values!549) from!863) lt!205587))))

(assert (=> b!452933 (= lt!205581 (+!1546 lt!205580 (tuple2!8005 (select (arr!13469 lt!205590) from!863) lt!205585)))))

(assert (=> b!452933 (= lt!205585 (get!6653 (select (store (arr!13468 _values!549) i!563 (ValueCellFull!5728 v!412)) from!863) lt!205587))))

(declare-fun dynLambda!868 (Int (_ BitVec 64)) V!17295)

(assert (=> b!452933 (= lt!205587 (dynLambda!868 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!452933 (= lt!205580 (getCurrentListMapNoExtraKeys!1657 lt!205590 lt!205586 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452934 () Bool)

(declare-fun e!265120 () Bool)

(assert (=> b!452934 (= e!265118 e!265120)))

(declare-fun res!269924 () Bool)

(assert (=> b!452934 (=> (not res!269924) (not e!265120))))

(assert (=> b!452934 (= res!269924 (= from!863 i!563))))

(assert (=> b!452934 (= lt!205581 (getCurrentListMapNoExtraKeys!1657 lt!205590 lt!205586 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!452934 (= lt!205586 (array!28054 (store (arr!13468 _values!549) i!563 (ValueCellFull!5728 v!412)) (size!13820 _values!549)))))

(assert (=> b!452934 (= lt!205589 (getCurrentListMapNoExtraKeys!1657 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!452935 () Bool)

(assert (=> b!452935 (= e!265114 tp_is_empty!12143)))

(declare-fun bm!30023 () Bool)

(assert (=> bm!30023 (= call!30025 (getCurrentListMapNoExtraKeys!1657 (ite c!56081 _keys!709 lt!205590) (ite c!56081 _values!549 lt!205586) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452936 () Bool)

(assert (=> b!452936 (= e!265116 (= call!30025 call!30026))))

(declare-fun b!452937 () Bool)

(declare-fun res!269936 () Bool)

(assert (=> b!452937 (=> (not res!269936) (not e!265118))))

(assert (=> b!452937 (= res!269936 (bvsle from!863 i!563))))

(declare-fun b!452938 () Bool)

(declare-fun res!269925 () Bool)

(assert (=> b!452938 (=> (not res!269925) (not e!265115))))

(assert (=> b!452938 (= res!269925 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!19851 () Bool)

(assert (=> mapIsEmpty!19851 mapRes!19851))

(declare-fun b!452939 () Bool)

(declare-fun e!265121 () Bool)

(assert (=> b!452939 (= e!265121 tp_is_empty!12143)))

(declare-fun b!452940 () Bool)

(declare-fun res!269931 () Bool)

(assert (=> b!452940 (=> (not res!269931) (not e!265115))))

(assert (=> b!452940 (= res!269931 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8104))))

(declare-fun b!452941 () Bool)

(assert (=> b!452941 (= e!265117 (and e!265121 mapRes!19851))))

(declare-fun condMapEmpty!19851 () Bool)

(declare-fun mapDefault!19851 () ValueCell!5728)

