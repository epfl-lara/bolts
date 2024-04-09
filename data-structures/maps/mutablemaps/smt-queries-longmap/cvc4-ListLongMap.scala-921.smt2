; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20638 () Bool)

(assert start!20638)

(declare-fun b_free!5285 () Bool)

(declare-fun b_next!5285 () Bool)

(assert (=> start!20638 (= b_free!5285 (not b_next!5285))))

(declare-fun tp!18886 () Bool)

(declare-fun b_and!12049 () Bool)

(assert (=> start!20638 (= tp!18886 b_and!12049)))

(declare-fun b!205732 () Bool)

(declare-fun res!99506 () Bool)

(declare-fun e!134527 () Bool)

(assert (=> b!205732 (=> (not res!99506) (not e!134527))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9492 0))(
  ( (array!9493 (arr!4496 (Array (_ BitVec 32) (_ BitVec 64))) (size!4821 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9492)

(assert (=> b!205732 (= res!99506 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4821 _keys!825))))))

(declare-fun mapIsEmpty!8780 () Bool)

(declare-fun mapRes!8780 () Bool)

(assert (=> mapIsEmpty!8780 mapRes!8780))

(declare-fun b!205733 () Bool)

(declare-fun e!134526 () Bool)

(assert (=> b!205733 (= e!134527 (not e!134526))))

(declare-fun res!99510 () Bool)

(assert (=> b!205733 (=> res!99510 e!134526)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!205733 (= res!99510 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6501 0))(
  ( (V!6502 (val!2615 Int)) )
))
(declare-datatypes ((ValueCell!2227 0))(
  ( (ValueCellFull!2227 (v!4581 V!6501)) (EmptyCell!2227) )
))
(declare-datatypes ((array!9494 0))(
  ( (array!9495 (arr!4497 (Array (_ BitVec 32) ValueCell!2227)) (size!4822 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9494)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((tuple2!3964 0))(
  ( (tuple2!3965 (_1!1992 (_ BitVec 64)) (_2!1992 V!6501)) )
))
(declare-datatypes ((List!2883 0))(
  ( (Nil!2880) (Cons!2879 (h!3521 tuple2!3964) (t!7822 List!2883)) )
))
(declare-datatypes ((ListLongMap!2891 0))(
  ( (ListLongMap!2892 (toList!1461 List!2883)) )
))
(declare-fun lt!104933 () ListLongMap!2891)

(declare-fun zeroValue!615 () V!6501)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6501)

(declare-fun getCurrentListMap!1026 (array!9492 array!9494 (_ BitVec 32) (_ BitVec 32) V!6501 V!6501 (_ BitVec 32) Int) ListLongMap!2891)

(assert (=> b!205733 (= lt!104933 (getCurrentListMap!1026 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!104941 () array!9494)

(declare-fun lt!104931 () ListLongMap!2891)

(assert (=> b!205733 (= lt!104931 (getCurrentListMap!1026 _keys!825 lt!104941 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!104939 () ListLongMap!2891)

(declare-fun lt!104934 () ListLongMap!2891)

(assert (=> b!205733 (and (= lt!104939 lt!104934) (= lt!104934 lt!104939))))

(declare-fun lt!104930 () ListLongMap!2891)

(declare-fun lt!104932 () tuple2!3964)

(declare-fun +!478 (ListLongMap!2891 tuple2!3964) ListLongMap!2891)

(assert (=> b!205733 (= lt!104934 (+!478 lt!104930 lt!104932))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun v!520 () V!6501)

(assert (=> b!205733 (= lt!104932 (tuple2!3965 k!843 v!520))))

(declare-datatypes ((Unit!6253 0))(
  ( (Unit!6254) )
))
(declare-fun lt!104937 () Unit!6253)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!139 (array!9492 array!9494 (_ BitVec 32) (_ BitVec 32) V!6501 V!6501 (_ BitVec 32) (_ BitVec 64) V!6501 (_ BitVec 32) Int) Unit!6253)

(assert (=> b!205733 (= lt!104937 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!139 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!397 (array!9492 array!9494 (_ BitVec 32) (_ BitVec 32) V!6501 V!6501 (_ BitVec 32) Int) ListLongMap!2891)

(assert (=> b!205733 (= lt!104939 (getCurrentListMapNoExtraKeys!397 _keys!825 lt!104941 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!205733 (= lt!104941 (array!9495 (store (arr!4497 _values!649) i!601 (ValueCellFull!2227 v!520)) (size!4822 _values!649)))))

(assert (=> b!205733 (= lt!104930 (getCurrentListMapNoExtraKeys!397 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!205734 () Bool)

(declare-fun e!134525 () Bool)

(assert (=> b!205734 (= e!134526 e!134525)))

(declare-fun res!99503 () Bool)

(assert (=> b!205734 (=> res!99503 e!134525)))

(assert (=> b!205734 (= res!99503 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!104938 () ListLongMap!2891)

(assert (=> b!205734 (= lt!104933 lt!104938)))

(declare-fun lt!104940 () tuple2!3964)

(assert (=> b!205734 (= lt!104938 (+!478 lt!104930 lt!104940))))

(declare-fun lt!104935 () ListLongMap!2891)

(assert (=> b!205734 (= lt!104931 lt!104935)))

(assert (=> b!205734 (= lt!104935 (+!478 lt!104934 lt!104940))))

(assert (=> b!205734 (= lt!104931 (+!478 lt!104939 lt!104940))))

(assert (=> b!205734 (= lt!104940 (tuple2!3965 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!205735 () Bool)

(declare-fun e!134524 () Bool)

(declare-fun tp_is_empty!5141 () Bool)

(assert (=> b!205735 (= e!134524 tp_is_empty!5141)))

(declare-fun b!205736 () Bool)

(assert (=> b!205736 (= e!134525 true)))

(assert (=> b!205736 (= lt!104935 (+!478 lt!104938 lt!104932))))

(declare-fun lt!104936 () Unit!6253)

(declare-fun addCommutativeForDiffKeys!177 (ListLongMap!2891 (_ BitVec 64) V!6501 (_ BitVec 64) V!6501) Unit!6253)

(assert (=> b!205736 (= lt!104936 (addCommutativeForDiffKeys!177 lt!104930 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!205737 () Bool)

(declare-fun res!99511 () Bool)

(assert (=> b!205737 (=> (not res!99511) (not e!134527))))

(assert (=> b!205737 (= res!99511 (and (= (size!4822 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4821 _keys!825) (size!4822 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!205738 () Bool)

(declare-fun res!99507 () Bool)

(assert (=> b!205738 (=> (not res!99507) (not e!134527))))

(assert (=> b!205738 (= res!99507 (= (select (arr!4496 _keys!825) i!601) k!843))))

(declare-fun b!205739 () Bool)

(declare-fun res!99505 () Bool)

(assert (=> b!205739 (=> (not res!99505) (not e!134527))))

(declare-datatypes ((List!2884 0))(
  ( (Nil!2881) (Cons!2880 (h!3522 (_ BitVec 64)) (t!7823 List!2884)) )
))
(declare-fun arrayNoDuplicates!0 (array!9492 (_ BitVec 32) List!2884) Bool)

(assert (=> b!205739 (= res!99505 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2881))))

(declare-fun b!205740 () Bool)

(declare-fun e!134521 () Bool)

(assert (=> b!205740 (= e!134521 tp_is_empty!5141)))

(declare-fun b!205741 () Bool)

(declare-fun res!99504 () Bool)

(assert (=> b!205741 (=> (not res!99504) (not e!134527))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!205741 (= res!99504 (validKeyInArray!0 k!843))))

(declare-fun b!205742 () Bool)

(declare-fun res!99508 () Bool)

(assert (=> b!205742 (=> (not res!99508) (not e!134527))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9492 (_ BitVec 32)) Bool)

(assert (=> b!205742 (= res!99508 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!205743 () Bool)

(declare-fun e!134523 () Bool)

(assert (=> b!205743 (= e!134523 (and e!134524 mapRes!8780))))

(declare-fun condMapEmpty!8780 () Bool)

(declare-fun mapDefault!8780 () ValueCell!2227)

