; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39520 () Bool)

(assert start!39520)

(declare-fun b_free!9779 () Bool)

(declare-fun b_next!9779 () Bool)

(assert (=> start!39520 (= b_free!9779 (not b_next!9779))))

(declare-fun tp!34866 () Bool)

(declare-fun b_and!17451 () Bool)

(assert (=> start!39520 (= tp!34866 b_and!17451)))

(declare-fun b!422073 () Bool)

(declare-fun res!246504 () Bool)

(declare-fun e!251159 () Bool)

(assert (=> b!422073 (=> (not res!246504) (not e!251159))))

(declare-datatypes ((array!25689 0))(
  ( (array!25690 (arr!12291 (Array (_ BitVec 32) (_ BitVec 64))) (size!12643 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25689)

(declare-datatypes ((List!7204 0))(
  ( (Nil!7201) (Cons!7200 (h!8056 (_ BitVec 64)) (t!12656 List!7204)) )
))
(declare-fun arrayNoDuplicates!0 (array!25689 (_ BitVec 32) List!7204) Bool)

(assert (=> b!422073 (= res!246504 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7201))))

(declare-fun b!422074 () Bool)

(declare-fun e!251163 () Bool)

(declare-fun e!251161 () Bool)

(assert (=> b!422074 (= e!251163 (not e!251161))))

(declare-fun res!246506 () Bool)

(assert (=> b!422074 (=> res!246506 e!251161)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!422074 (= res!246506 (validKeyInArray!0 (select (arr!12291 _keys!709) from!863)))))

(declare-fun e!251162 () Bool)

(assert (=> b!422074 e!251162))

(declare-fun c!55307 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!422074 (= c!55307 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((V!15679 0))(
  ( (V!15680 (val!5510 Int)) )
))
(declare-fun minValue!515 () V!15679)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5122 0))(
  ( (ValueCellFull!5122 (v!7753 V!15679)) (EmptyCell!5122) )
))
(declare-datatypes ((array!25691 0))(
  ( (array!25692 (arr!12292 (Array (_ BitVec 32) ValueCell!5122)) (size!12644 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25691)

(declare-fun zeroValue!515 () V!15679)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!15679)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((Unit!12427 0))(
  ( (Unit!12428) )
))
(declare-fun lt!193894 () Unit!12427)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!464 (array!25689 array!25691 (_ BitVec 32) (_ BitVec 32) V!15679 V!15679 (_ BitVec 32) (_ BitVec 64) V!15679 (_ BitVec 32) Int) Unit!12427)

(assert (=> b!422074 (= lt!193894 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!464 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!422075 () Bool)

(declare-fun res!246505 () Bool)

(assert (=> b!422075 (=> (not res!246505) (not e!251159))))

(declare-fun arrayContainsKey!0 (array!25689 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!422075 (= res!246505 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!422076 () Bool)

(assert (=> b!422076 (= e!251161 true)))

(declare-datatypes ((tuple2!7162 0))(
  ( (tuple2!7163 (_1!3591 (_ BitVec 64)) (_2!3591 V!15679)) )
))
(declare-datatypes ((List!7205 0))(
  ( (Nil!7202) (Cons!7201 (h!8057 tuple2!7162) (t!12657 List!7205)) )
))
(declare-datatypes ((ListLongMap!6089 0))(
  ( (ListLongMap!6090 (toList!3060 List!7205)) )
))
(declare-fun lt!193896 () ListLongMap!6089)

(declare-fun lt!193897 () tuple2!7162)

(declare-fun lt!193898 () V!15679)

(declare-fun +!1262 (ListLongMap!6089 tuple2!7162) ListLongMap!6089)

(assert (=> b!422076 (= (+!1262 lt!193896 lt!193897) (+!1262 (+!1262 lt!193896 (tuple2!7163 k!794 lt!193898)) lt!193897))))

(declare-fun lt!193892 () V!15679)

(assert (=> b!422076 (= lt!193897 (tuple2!7163 k!794 lt!193892))))

(declare-fun lt!193899 () Unit!12427)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!78 (ListLongMap!6089 (_ BitVec 64) V!15679 V!15679) Unit!12427)

(assert (=> b!422076 (= lt!193899 (addSameAsAddTwiceSameKeyDiffValues!78 lt!193896 k!794 lt!193898 lt!193892))))

(declare-fun lt!193890 () V!15679)

(declare-fun get!6119 (ValueCell!5122 V!15679) V!15679)

(assert (=> b!422076 (= lt!193898 (get!6119 (select (arr!12292 _values!549) from!863) lt!193890))))

(declare-fun lt!193889 () ListLongMap!6089)

(declare-fun lt!193893 () array!25689)

(assert (=> b!422076 (= lt!193889 (+!1262 lt!193896 (tuple2!7163 (select (arr!12291 lt!193893) from!863) lt!193892)))))

(assert (=> b!422076 (= lt!193892 (get!6119 (select (store (arr!12292 _values!549) i!563 (ValueCellFull!5122 v!412)) from!863) lt!193890))))

(declare-fun dynLambda!740 (Int (_ BitVec 64)) V!15679)

(assert (=> b!422076 (= lt!193890 (dynLambda!740 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!193891 () array!25691)

(declare-fun getCurrentListMapNoExtraKeys!1261 (array!25689 array!25691 (_ BitVec 32) (_ BitVec 32) V!15679 V!15679 (_ BitVec 32) Int) ListLongMap!6089)

(assert (=> b!422076 (= lt!193896 (getCurrentListMapNoExtraKeys!1261 lt!193893 lt!193891 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!18018 () Bool)

(declare-fun mapRes!18018 () Bool)

(declare-fun tp!34865 () Bool)

(declare-fun e!251165 () Bool)

(assert (=> mapNonEmpty!18018 (= mapRes!18018 (and tp!34865 e!251165))))

(declare-fun mapKey!18018 () (_ BitVec 32))

(declare-fun mapRest!18018 () (Array (_ BitVec 32) ValueCell!5122))

(declare-fun mapValue!18018 () ValueCell!5122)

(assert (=> mapNonEmpty!18018 (= (arr!12292 _values!549) (store mapRest!18018 mapKey!18018 mapValue!18018))))

(declare-fun b!422077 () Bool)

(declare-fun res!246507 () Bool)

(assert (=> b!422077 (=> (not res!246507) (not e!251159))))

(assert (=> b!422077 (= res!246507 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12643 _keys!709))))))

(declare-fun call!29512 () ListLongMap!6089)

(declare-fun bm!29509 () Bool)

(assert (=> bm!29509 (= call!29512 (getCurrentListMapNoExtraKeys!1261 (ite c!55307 lt!193893 _keys!709) (ite c!55307 lt!193891 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!422078 () Bool)

(declare-fun res!246501 () Bool)

(assert (=> b!422078 (=> (not res!246501) (not e!251159))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!422078 (= res!246501 (validMask!0 mask!1025))))

(declare-fun b!422079 () Bool)

(declare-fun e!251167 () Bool)

(declare-fun e!251166 () Bool)

(assert (=> b!422079 (= e!251167 (and e!251166 mapRes!18018))))

(declare-fun condMapEmpty!18018 () Bool)

(declare-fun mapDefault!18018 () ValueCell!5122)

