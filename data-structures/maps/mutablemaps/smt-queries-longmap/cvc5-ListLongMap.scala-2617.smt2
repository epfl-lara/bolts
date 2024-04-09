; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39528 () Bool)

(assert start!39528)

(declare-fun b_free!9787 () Bool)

(declare-fun b_next!9787 () Bool)

(assert (=> start!39528 (= b_free!9787 (not b_next!9787))))

(declare-fun tp!34889 () Bool)

(declare-fun b_and!17461 () Bool)

(assert (=> start!39528 (= tp!34889 b_and!17461)))

(declare-fun b!422259 () Bool)

(declare-fun e!251234 () Bool)

(assert (=> b!422259 (= e!251234 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!15691 0))(
  ( (V!15692 (val!5514 Int)) )
))
(declare-datatypes ((tuple2!7166 0))(
  ( (tuple2!7167 (_1!3593 (_ BitVec 64)) (_2!3593 V!15691)) )
))
(declare-datatypes ((List!7209 0))(
  ( (Nil!7206) (Cons!7205 (h!8061 tuple2!7166) (t!12661 List!7209)) )
))
(declare-datatypes ((ListLongMap!6093 0))(
  ( (ListLongMap!6094 (toList!3062 List!7209)) )
))
(declare-fun lt!193935 () ListLongMap!6093)

(declare-fun minValue!515 () V!15691)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5126 0))(
  ( (ValueCellFull!5126 (v!7757 V!15691)) (EmptyCell!5126) )
))
(declare-datatypes ((array!25705 0))(
  ( (array!25706 (arr!12299 (Array (_ BitVec 32) ValueCell!5126)) (size!12651 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25705)

(declare-fun zeroValue!515 () V!15691)

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!25707 0))(
  ( (array!25708 (arr!12300 (Array (_ BitVec 32) (_ BitVec 64))) (size!12652 (_ BitVec 32))) )
))
(declare-fun lt!193933 () array!25707)

(declare-fun v!412 () V!15691)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1263 (array!25707 array!25705 (_ BitVec 32) (_ BitVec 32) V!15691 V!15691 (_ BitVec 32) Int) ListLongMap!6093)

(assert (=> b!422259 (= lt!193935 (getCurrentListMapNoExtraKeys!1263 lt!193933 (array!25706 (store (arr!12299 _values!549) i!563 (ValueCellFull!5126 v!412)) (size!12651 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!193934 () ListLongMap!6093)

(declare-fun _keys!709 () array!25707)

(assert (=> b!422259 (= lt!193934 (getCurrentListMapNoExtraKeys!1263 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!422260 () Bool)

(declare-fun res!246653 () Bool)

(declare-fun e!251237 () Bool)

(assert (=> b!422260 (=> (not res!246653) (not e!251237))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25707 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!422260 (= res!246653 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun res!246652 () Bool)

(assert (=> start!39528 (=> (not res!246652) (not e!251237))))

(assert (=> start!39528 (= res!246652 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12652 _keys!709))))))

(assert (=> start!39528 e!251237))

(declare-fun tp_is_empty!10939 () Bool)

(assert (=> start!39528 tp_is_empty!10939))

(assert (=> start!39528 tp!34889))

(assert (=> start!39528 true))

(declare-fun e!251235 () Bool)

(declare-fun array_inv!8958 (array!25705) Bool)

(assert (=> start!39528 (and (array_inv!8958 _values!549) e!251235)))

(declare-fun array_inv!8959 (array!25707) Bool)

(assert (=> start!39528 (array_inv!8959 _keys!709)))

(declare-fun b!422261 () Bool)

(declare-fun res!246649 () Bool)

(assert (=> b!422261 (=> (not res!246649) (not e!251237))))

(declare-datatypes ((List!7210 0))(
  ( (Nil!7207) (Cons!7206 (h!8062 (_ BitVec 64)) (t!12662 List!7210)) )
))
(declare-fun arrayNoDuplicates!0 (array!25707 (_ BitVec 32) List!7210) Bool)

(assert (=> b!422261 (= res!246649 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7207))))

(declare-fun mapIsEmpty!18030 () Bool)

(declare-fun mapRes!18030 () Bool)

(assert (=> mapIsEmpty!18030 mapRes!18030))

(declare-fun mapNonEmpty!18030 () Bool)

(declare-fun tp!34890 () Bool)

(declare-fun e!251236 () Bool)

(assert (=> mapNonEmpty!18030 (= mapRes!18030 (and tp!34890 e!251236))))

(declare-fun mapRest!18030 () (Array (_ BitVec 32) ValueCell!5126))

(declare-fun mapValue!18030 () ValueCell!5126)

(declare-fun mapKey!18030 () (_ BitVec 32))

(assert (=> mapNonEmpty!18030 (= (arr!12299 _values!549) (store mapRest!18030 mapKey!18030 mapValue!18030))))

(declare-fun b!422262 () Bool)

(assert (=> b!422262 (= e!251237 e!251234)))

(declare-fun res!246646 () Bool)

(assert (=> b!422262 (=> (not res!246646) (not e!251234))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25707 (_ BitVec 32)) Bool)

(assert (=> b!422262 (= res!246646 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!193933 mask!1025))))

(assert (=> b!422262 (= lt!193933 (array!25708 (store (arr!12300 _keys!709) i!563 k!794) (size!12652 _keys!709)))))

(declare-fun b!422263 () Bool)

(declare-fun e!251239 () Bool)

(assert (=> b!422263 (= e!251235 (and e!251239 mapRes!18030))))

(declare-fun condMapEmpty!18030 () Bool)

(declare-fun mapDefault!18030 () ValueCell!5126)

