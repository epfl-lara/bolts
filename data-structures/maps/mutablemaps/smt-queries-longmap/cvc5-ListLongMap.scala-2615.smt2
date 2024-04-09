; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39516 () Bool)

(assert start!39516)

(declare-fun b_free!9775 () Bool)

(declare-fun b_next!9775 () Bool)

(assert (=> start!39516 (= b_free!9775 (not b_next!9775))))

(declare-fun tp!34854 () Bool)

(declare-fun b_and!17443 () Bool)

(assert (=> start!39516 (= tp!34854 b_and!17443)))

(declare-fun b!421955 () Bool)

(declare-fun res!246414 () Bool)

(declare-fun e!251105 () Bool)

(assert (=> b!421955 (=> (not res!246414) (not e!251105))))

(declare-datatypes ((array!25681 0))(
  ( (array!25682 (arr!12287 (Array (_ BitVec 32) (_ BitVec 64))) (size!12639 (_ BitVec 32))) )
))
(declare-fun lt!193823 () array!25681)

(declare-datatypes ((List!7200 0))(
  ( (Nil!7197) (Cons!7196 (h!8052 (_ BitVec 64)) (t!12648 List!7200)) )
))
(declare-fun arrayNoDuplicates!0 (array!25681 (_ BitVec 32) List!7200) Bool)

(assert (=> b!421955 (= res!246414 (arrayNoDuplicates!0 lt!193823 #b00000000000000000000000000000000 Nil!7197))))

(declare-fun b!421956 () Bool)

(declare-fun res!246417 () Bool)

(declare-fun e!251111 () Bool)

(assert (=> b!421956 (=> (not res!246417) (not e!251111))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!421956 (= res!246417 (validMask!0 mask!1025))))

(declare-fun b!421957 () Bool)

(assert (=> b!421957 (= e!251111 e!251105)))

(declare-fun res!246421 () Bool)

(assert (=> b!421957 (=> (not res!246421) (not e!251105))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25681 (_ BitVec 32)) Bool)

(assert (=> b!421957 (= res!246421 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!193823 mask!1025))))

(declare-fun _keys!709 () array!25681)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!421957 (= lt!193823 (array!25682 (store (arr!12287 _keys!709) i!563 k!794) (size!12639 _keys!709)))))

(declare-datatypes ((V!15675 0))(
  ( (V!15676 (val!5508 Int)) )
))
(declare-fun minValue!515 () V!15675)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5120 0))(
  ( (ValueCellFull!5120 (v!7751 V!15675)) (EmptyCell!5120) )
))
(declare-datatypes ((array!25683 0))(
  ( (array!25684 (arr!12288 (Array (_ BitVec 32) ValueCell!5120)) (size!12640 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25683)

(declare-datatypes ((tuple2!7158 0))(
  ( (tuple2!7159 (_1!3589 (_ BitVec 64)) (_2!3589 V!15675)) )
))
(declare-datatypes ((List!7201 0))(
  ( (Nil!7198) (Cons!7197 (h!8053 tuple2!7158) (t!12649 List!7201)) )
))
(declare-datatypes ((ListLongMap!6085 0))(
  ( (ListLongMap!6086 (toList!3058 List!7201)) )
))
(declare-fun call!29500 () ListLongMap!6085)

(declare-fun zeroValue!515 () V!15675)

(declare-fun bm!29497 () Bool)

(declare-fun c!55301 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!193830 () array!25683)

(declare-fun getCurrentListMapNoExtraKeys!1259 (array!25681 array!25683 (_ BitVec 32) (_ BitVec 32) V!15675 V!15675 (_ BitVec 32) Int) ListLongMap!6085)

(assert (=> bm!29497 (= call!29500 (getCurrentListMapNoExtraKeys!1259 (ite c!55301 _keys!709 lt!193823) (ite c!55301 _values!549 lt!193830) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421958 () Bool)

(declare-fun res!246420 () Bool)

(assert (=> b!421958 (=> (not res!246420) (not e!251111))))

(assert (=> b!421958 (= res!246420 (or (= (select (arr!12287 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12287 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!251108 () Bool)

(declare-fun b!421959 () Bool)

(declare-fun call!29501 () ListLongMap!6085)

(declare-fun v!412 () V!15675)

(declare-fun +!1260 (ListLongMap!6085 tuple2!7158) ListLongMap!6085)

(assert (=> b!421959 (= e!251108 (= call!29501 (+!1260 call!29500 (tuple2!7159 k!794 v!412))))))

(declare-fun b!421960 () Bool)

(declare-fun e!251113 () Bool)

(declare-fun tp_is_empty!10927 () Bool)

(assert (=> b!421960 (= e!251113 tp_is_empty!10927)))

(declare-fun mapIsEmpty!18012 () Bool)

(declare-fun mapRes!18012 () Bool)

(assert (=> mapIsEmpty!18012 mapRes!18012))

(declare-fun b!421961 () Bool)

(declare-fun e!251112 () Bool)

(assert (=> b!421961 (= e!251105 e!251112)))

(declare-fun res!246419 () Bool)

(assert (=> b!421961 (=> (not res!246419) (not e!251112))))

(assert (=> b!421961 (= res!246419 (= from!863 i!563))))

(declare-fun lt!193825 () ListLongMap!6085)

(assert (=> b!421961 (= lt!193825 (getCurrentListMapNoExtraKeys!1259 lt!193823 lt!193830 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!421961 (= lt!193830 (array!25684 (store (arr!12288 _values!549) i!563 (ValueCellFull!5120 v!412)) (size!12640 _values!549)))))

(declare-fun lt!193833 () ListLongMap!6085)

(assert (=> b!421961 (= lt!193833 (getCurrentListMapNoExtraKeys!1259 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun res!246426 () Bool)

(assert (=> start!39516 (=> (not res!246426) (not e!251111))))

(assert (=> start!39516 (= res!246426 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12639 _keys!709))))))

(assert (=> start!39516 e!251111))

(assert (=> start!39516 tp_is_empty!10927))

(assert (=> start!39516 tp!34854))

(assert (=> start!39516 true))

(declare-fun e!251109 () Bool)

(declare-fun array_inv!8948 (array!25683) Bool)

(assert (=> start!39516 (and (array_inv!8948 _values!549) e!251109)))

(declare-fun array_inv!8949 (array!25681) Bool)

(assert (=> start!39516 (array_inv!8949 _keys!709)))

(declare-fun b!421962 () Bool)

(declare-fun e!251110 () Bool)

(assert (=> b!421962 (= e!251110 tp_is_empty!10927)))

(declare-fun b!421963 () Bool)

(declare-fun res!246422 () Bool)

(assert (=> b!421963 (=> (not res!246422) (not e!251111))))

(assert (=> b!421963 (= res!246422 (and (= (size!12640 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12639 _keys!709) (size!12640 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!421964 () Bool)

(declare-fun res!246424 () Bool)

(assert (=> b!421964 (=> (not res!246424) (not e!251111))))

(assert (=> b!421964 (= res!246424 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7197))))

(declare-fun b!421965 () Bool)

(declare-fun res!246423 () Bool)

(assert (=> b!421965 (=> (not res!246423) (not e!251111))))

(assert (=> b!421965 (= res!246423 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12639 _keys!709))))))

(declare-fun b!421966 () Bool)

(declare-fun res!246425 () Bool)

(assert (=> b!421966 (=> (not res!246425) (not e!251111))))

(assert (=> b!421966 (= res!246425 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!421967 () Bool)

(declare-fun res!246415 () Bool)

(assert (=> b!421967 (=> (not res!246415) (not e!251105))))

(assert (=> b!421967 (= res!246415 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!18012 () Bool)

(declare-fun tp!34853 () Bool)

(assert (=> mapNonEmpty!18012 (= mapRes!18012 (and tp!34853 e!251110))))

(declare-fun mapValue!18012 () ValueCell!5120)

(declare-fun mapKey!18012 () (_ BitVec 32))

(declare-fun mapRest!18012 () (Array (_ BitVec 32) ValueCell!5120))

(assert (=> mapNonEmpty!18012 (= (arr!12288 _values!549) (store mapRest!18012 mapKey!18012 mapValue!18012))))

(declare-fun b!421968 () Bool)

(declare-fun e!251106 () Bool)

(assert (=> b!421968 (= e!251112 (not e!251106))))

(declare-fun res!246413 () Bool)

(assert (=> b!421968 (=> res!246413 e!251106)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!421968 (= res!246413 (validKeyInArray!0 (select (arr!12287 _keys!709) from!863)))))

(assert (=> b!421968 e!251108))

(assert (=> b!421968 (= c!55301 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12423 0))(
  ( (Unit!12424) )
))
(declare-fun lt!193828 () Unit!12423)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!462 (array!25681 array!25683 (_ BitVec 32) (_ BitVec 32) V!15675 V!15675 (_ BitVec 32) (_ BitVec 64) V!15675 (_ BitVec 32) Int) Unit!12423)

(assert (=> b!421968 (= lt!193828 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!462 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421969 () Bool)

(assert (=> b!421969 (= e!251106 true)))

(declare-fun lt!193832 () tuple2!7158)

(declare-fun lt!193831 () V!15675)

(declare-fun lt!193824 () ListLongMap!6085)

(assert (=> b!421969 (= (+!1260 lt!193824 lt!193832) (+!1260 (+!1260 lt!193824 (tuple2!7159 k!794 lt!193831)) lt!193832))))

(declare-fun lt!193829 () V!15675)

(assert (=> b!421969 (= lt!193832 (tuple2!7159 k!794 lt!193829))))

(declare-fun lt!193827 () Unit!12423)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!76 (ListLongMap!6085 (_ BitVec 64) V!15675 V!15675) Unit!12423)

(assert (=> b!421969 (= lt!193827 (addSameAsAddTwiceSameKeyDiffValues!76 lt!193824 k!794 lt!193831 lt!193829))))

(declare-fun lt!193826 () V!15675)

(declare-fun get!6117 (ValueCell!5120 V!15675) V!15675)

(assert (=> b!421969 (= lt!193831 (get!6117 (select (arr!12288 _values!549) from!863) lt!193826))))

(assert (=> b!421969 (= lt!193825 (+!1260 lt!193824 (tuple2!7159 (select (arr!12287 lt!193823) from!863) lt!193829)))))

(assert (=> b!421969 (= lt!193829 (get!6117 (select (store (arr!12288 _values!549) i!563 (ValueCellFull!5120 v!412)) from!863) lt!193826))))

(declare-fun dynLambda!738 (Int (_ BitVec 64)) V!15675)

(assert (=> b!421969 (= lt!193826 (dynLambda!738 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!421969 (= lt!193824 (getCurrentListMapNoExtraKeys!1259 lt!193823 lt!193830 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421970 () Bool)

(declare-fun res!246418 () Bool)

(assert (=> b!421970 (=> (not res!246418) (not e!251111))))

(declare-fun arrayContainsKey!0 (array!25681 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!421970 (= res!246418 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!421971 () Bool)

(declare-fun res!246416 () Bool)

(assert (=> b!421971 (=> (not res!246416) (not e!251111))))

(assert (=> b!421971 (= res!246416 (validKeyInArray!0 k!794))))

(declare-fun b!421972 () Bool)

(assert (=> b!421972 (= e!251108 (= call!29500 call!29501))))

(declare-fun bm!29498 () Bool)

(assert (=> bm!29498 (= call!29501 (getCurrentListMapNoExtraKeys!1259 (ite c!55301 lt!193823 _keys!709) (ite c!55301 lt!193830 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421973 () Bool)

(assert (=> b!421973 (= e!251109 (and e!251113 mapRes!18012))))

(declare-fun condMapEmpty!18012 () Bool)

(declare-fun mapDefault!18012 () ValueCell!5120)

