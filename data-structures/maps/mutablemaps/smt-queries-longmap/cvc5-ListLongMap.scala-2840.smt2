; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41012 () Bool)

(assert start!41012)

(declare-fun b_free!10939 () Bool)

(declare-fun b_next!10939 () Bool)

(assert (=> start!41012 (= b_free!10939 (not b_next!10939))))

(declare-fun tp!38644 () Bool)

(declare-fun b_and!19099 () Bool)

(assert (=> start!41012 (= tp!38644 b_and!19099)))

(declare-fun res!272618 () Bool)

(declare-fun e!266739 () Bool)

(assert (=> start!41012 (=> (not res!272618) (not e!266739))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!28321 0))(
  ( (array!28322 (arr!13601 (Array (_ BitVec 32) (_ BitVec 64))) (size!13953 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28321)

(assert (=> start!41012 (= res!272618 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13953 _keys!709))))))

(assert (=> start!41012 e!266739))

(declare-fun tp_is_empty!12277 () Bool)

(assert (=> start!41012 tp_is_empty!12277))

(assert (=> start!41012 tp!38644))

(assert (=> start!41012 true))

(declare-datatypes ((V!17475 0))(
  ( (V!17476 (val!6183 Int)) )
))
(declare-datatypes ((ValueCell!5795 0))(
  ( (ValueCellFull!5795 (v!8445 V!17475)) (EmptyCell!5795) )
))
(declare-datatypes ((array!28323 0))(
  ( (array!28324 (arr!13602 (Array (_ BitVec 32) ValueCell!5795)) (size!13954 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28323)

(declare-fun e!266740 () Bool)

(declare-fun array_inv!9842 (array!28323) Bool)

(assert (=> start!41012 (and (array_inv!9842 _values!549) e!266740)))

(declare-fun array_inv!9843 (array!28321) Bool)

(assert (=> start!41012 (array_inv!9843 _keys!709)))

(declare-fun b!456597 () Bool)

(declare-fun res!272612 () Bool)

(assert (=> b!456597 (=> (not res!272612) (not e!266739))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!456597 (= res!272612 (and (= (size!13954 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13953 _keys!709) (size!13954 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!20056 () Bool)

(declare-fun mapRes!20056 () Bool)

(declare-fun tp!38643 () Bool)

(declare-fun e!266737 () Bool)

(assert (=> mapNonEmpty!20056 (= mapRes!20056 (and tp!38643 e!266737))))

(declare-fun mapRest!20056 () (Array (_ BitVec 32) ValueCell!5795))

(declare-fun mapKey!20056 () (_ BitVec 32))

(declare-fun mapValue!20056 () ValueCell!5795)

(assert (=> mapNonEmpty!20056 (= (arr!13602 _values!549) (store mapRest!20056 mapKey!20056 mapValue!20056))))

(declare-fun b!456598 () Bool)

(declare-fun res!272615 () Bool)

(assert (=> b!456598 (=> (not res!272615) (not e!266739))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!28321 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!456598 (= res!272615 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!456599 () Bool)

(declare-fun res!272619 () Bool)

(assert (=> b!456599 (=> (not res!272619) (not e!266739))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!456599 (= res!272619 (or (= (select (arr!13601 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13601 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!20056 () Bool)

(assert (=> mapIsEmpty!20056 mapRes!20056))

(declare-fun b!456600 () Bool)

(declare-fun res!272611 () Bool)

(assert (=> b!456600 (=> (not res!272611) (not e!266739))))

(assert (=> b!456600 (= res!272611 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13953 _keys!709))))))

(declare-fun b!456601 () Bool)

(declare-fun e!266742 () Bool)

(declare-fun e!266738 () Bool)

(assert (=> b!456601 (= e!266742 (not e!266738))))

(declare-fun res!272624 () Bool)

(assert (=> b!456601 (=> res!272624 e!266738)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!456601 (= res!272624 (not (validKeyInArray!0 (select (arr!13601 _keys!709) from!863))))))

(declare-fun zeroValue!515 () V!17475)

(declare-fun v!412 () V!17475)

(declare-fun minValue!515 () V!17475)

(declare-fun lt!206622 () array!28321)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!206619 () array!28323)

(declare-datatypes ((tuple2!8106 0))(
  ( (tuple2!8107 (_1!4063 (_ BitVec 64)) (_2!4063 V!17475)) )
))
(declare-datatypes ((List!8211 0))(
  ( (Nil!8208) (Cons!8207 (h!9063 tuple2!8106) (t!14047 List!8211)) )
))
(declare-datatypes ((ListLongMap!7033 0))(
  ( (ListLongMap!7034 (toList!3532 List!8211)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1708 (array!28321 array!28323 (_ BitVec 32) (_ BitVec 32) V!17475 V!17475 (_ BitVec 32) Int) ListLongMap!7033)

(declare-fun +!1553 (ListLongMap!7033 tuple2!8106) ListLongMap!7033)

(assert (=> b!456601 (= (getCurrentListMapNoExtraKeys!1708 lt!206622 lt!206619 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1553 (getCurrentListMapNoExtraKeys!1708 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!8107 k!794 v!412)))))

(declare-datatypes ((Unit!13231 0))(
  ( (Unit!13232) )
))
(declare-fun lt!206621 () Unit!13231)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!718 (array!28321 array!28323 (_ BitVec 32) (_ BitVec 32) V!17475 V!17475 (_ BitVec 32) (_ BitVec 64) V!17475 (_ BitVec 32) Int) Unit!13231)

(assert (=> b!456601 (= lt!206621 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!718 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!456602 () Bool)

(assert (=> b!456602 (= e!266737 tp_is_empty!12277)))

(declare-fun b!456603 () Bool)

(declare-fun e!266741 () Bool)

(assert (=> b!456603 (= e!266739 e!266741)))

(declare-fun res!272613 () Bool)

(assert (=> b!456603 (=> (not res!272613) (not e!266741))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28321 (_ BitVec 32)) Bool)

(assert (=> b!456603 (= res!272613 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206622 mask!1025))))

(assert (=> b!456603 (= lt!206622 (array!28322 (store (arr!13601 _keys!709) i!563 k!794) (size!13953 _keys!709)))))

(declare-fun b!456604 () Bool)

(declare-fun e!266743 () Bool)

(assert (=> b!456604 (= e!266743 tp_is_empty!12277)))

(declare-fun b!456605 () Bool)

(declare-fun res!272620 () Bool)

(assert (=> b!456605 (=> (not res!272620) (not e!266741))))

(declare-datatypes ((List!8212 0))(
  ( (Nil!8209) (Cons!8208 (h!9064 (_ BitVec 64)) (t!14048 List!8212)) )
))
(declare-fun arrayNoDuplicates!0 (array!28321 (_ BitVec 32) List!8212) Bool)

(assert (=> b!456605 (= res!272620 (arrayNoDuplicates!0 lt!206622 #b00000000000000000000000000000000 Nil!8209))))

(declare-fun b!456606 () Bool)

(assert (=> b!456606 (= e!266740 (and e!266743 mapRes!20056))))

(declare-fun condMapEmpty!20056 () Bool)

(declare-fun mapDefault!20056 () ValueCell!5795)

