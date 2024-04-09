; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39120 () Bool)

(assert start!39120)

(declare-fun b_free!9379 () Bool)

(declare-fun b_next!9379 () Bool)

(assert (=> start!39120 (= b_free!9379 (not b_next!9379))))

(declare-fun tp!33666 () Bool)

(declare-fun b_and!16783 () Bool)

(assert (=> start!39120 (= tp!33666 b_and!16783)))

(declare-fun b!410937 () Bool)

(declare-fun res!238403 () Bool)

(declare-fun e!246176 () Bool)

(assert (=> b!410937 (=> (not res!238403) (not e!246176))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!410937 (= res!238403 (validMask!0 mask!1025))))

(declare-fun b!410938 () Bool)

(declare-fun res!238401 () Bool)

(declare-fun e!246179 () Bool)

(assert (=> b!410938 (=> (not res!238401) (not e!246179))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!410938 (= res!238401 (bvsle from!863 i!563))))

(declare-fun b!410939 () Bool)

(declare-fun res!238400 () Bool)

(assert (=> b!410939 (=> (not res!238400) (not e!246176))))

(declare-datatypes ((array!24909 0))(
  ( (array!24910 (arr!11901 (Array (_ BitVec 32) (_ BitVec 64))) (size!12253 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24909)

(assert (=> b!410939 (= res!238400 (or (= (select (arr!11901 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11901 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!17418 () Bool)

(declare-fun mapRes!17418 () Bool)

(declare-fun tp!33665 () Bool)

(declare-fun e!246177 () Bool)

(assert (=> mapNonEmpty!17418 (= mapRes!17418 (and tp!33665 e!246177))))

(declare-datatypes ((V!15147 0))(
  ( (V!15148 (val!5310 Int)) )
))
(declare-datatypes ((ValueCell!4922 0))(
  ( (ValueCellFull!4922 (v!7553 V!15147)) (EmptyCell!4922) )
))
(declare-datatypes ((array!24911 0))(
  ( (array!24912 (arr!11902 (Array (_ BitVec 32) ValueCell!4922)) (size!12254 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24911)

(declare-fun mapRest!17418 () (Array (_ BitVec 32) ValueCell!4922))

(declare-fun mapValue!17418 () ValueCell!4922)

(declare-fun mapKey!17418 () (_ BitVec 32))

(assert (=> mapNonEmpty!17418 (= (arr!11902 _values!549) (store mapRest!17418 mapKey!17418 mapValue!17418))))

(declare-fun b!410940 () Bool)

(declare-fun e!246178 () Bool)

(declare-fun tp_is_empty!10531 () Bool)

(assert (=> b!410940 (= e!246178 tp_is_empty!10531)))

(declare-fun b!410941 () Bool)

(declare-fun res!238406 () Bool)

(assert (=> b!410941 (=> (not res!238406) (not e!246176))))

(assert (=> b!410941 (= res!238406 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12253 _keys!709))))))

(declare-fun b!410942 () Bool)

(assert (=> b!410942 (= e!246179 false)))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!189182 () array!24909)

(declare-fun zeroValue!515 () V!15147)

(declare-fun v!412 () V!15147)

(declare-datatypes ((tuple2!6822 0))(
  ( (tuple2!6823 (_1!3421 (_ BitVec 64)) (_2!3421 V!15147)) )
))
(declare-datatypes ((List!6877 0))(
  ( (Nil!6874) (Cons!6873 (h!7729 tuple2!6822) (t!12059 List!6877)) )
))
(declare-datatypes ((ListLongMap!5749 0))(
  ( (ListLongMap!5750 (toList!2890 List!6877)) )
))
(declare-fun lt!189183 () ListLongMap!5749)

(declare-fun minValue!515 () V!15147)

(declare-fun getCurrentListMapNoExtraKeys!1100 (array!24909 array!24911 (_ BitVec 32) (_ BitVec 32) V!15147 V!15147 (_ BitVec 32) Int) ListLongMap!5749)

(assert (=> b!410942 (= lt!189183 (getCurrentListMapNoExtraKeys!1100 lt!189182 (array!24912 (store (arr!11902 _values!549) i!563 (ValueCellFull!4922 v!412)) (size!12254 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!189181 () ListLongMap!5749)

(assert (=> b!410942 (= lt!189181 (getCurrentListMapNoExtraKeys!1100 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!410943 () Bool)

(declare-fun e!246180 () Bool)

(assert (=> b!410943 (= e!246180 (and e!246178 mapRes!17418))))

(declare-fun condMapEmpty!17418 () Bool)

(declare-fun mapDefault!17418 () ValueCell!4922)

