; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39112 () Bool)

(assert start!39112)

(declare-fun b_free!9371 () Bool)

(declare-fun b_next!9371 () Bool)

(assert (=> start!39112 (= b_free!9371 (not b_next!9371))))

(declare-fun tp!33641 () Bool)

(declare-fun b_and!16775 () Bool)

(assert (=> start!39112 (= tp!33641 b_and!16775)))

(declare-fun b!410757 () Bool)

(declare-fun res!238265 () Bool)

(declare-fun e!246104 () Bool)

(assert (=> b!410757 (=> (not res!238265) (not e!246104))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!410757 (= res!238265 (bvsle from!863 i!563))))

(declare-fun b!410758 () Bool)

(declare-fun e!246108 () Bool)

(assert (=> b!410758 (= e!246108 e!246104)))

(declare-fun res!238258 () Bool)

(assert (=> b!410758 (=> (not res!238258) (not e!246104))))

(declare-datatypes ((array!24895 0))(
  ( (array!24896 (arr!11894 (Array (_ BitVec 32) (_ BitVec 64))) (size!12246 (_ BitVec 32))) )
))
(declare-fun lt!189147 () array!24895)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24895 (_ BitVec 32)) Bool)

(assert (=> b!410758 (= res!238258 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189147 mask!1025))))

(declare-fun _keys!709 () array!24895)

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!410758 (= lt!189147 (array!24896 (store (arr!11894 _keys!709) i!563 k!794) (size!12246 _keys!709)))))

(declare-fun mapIsEmpty!17406 () Bool)

(declare-fun mapRes!17406 () Bool)

(assert (=> mapIsEmpty!17406 mapRes!17406))

(declare-fun b!410759 () Bool)

(declare-fun res!238262 () Bool)

(assert (=> b!410759 (=> (not res!238262) (not e!246108))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!410759 (= res!238262 (validKeyInArray!0 k!794))))

(declare-fun b!410760 () Bool)

(declare-fun res!238255 () Bool)

(assert (=> b!410760 (=> (not res!238255) (not e!246108))))

(declare-fun arrayContainsKey!0 (array!24895 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!410760 (= res!238255 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!410761 () Bool)

(declare-fun res!238263 () Bool)

(assert (=> b!410761 (=> (not res!238263) (not e!246108))))

(assert (=> b!410761 (= res!238263 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!238256 () Bool)

(assert (=> start!39112 (=> (not res!238256) (not e!246108))))

(assert (=> start!39112 (= res!238256 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12246 _keys!709))))))

(assert (=> start!39112 e!246108))

(declare-fun tp_is_empty!10523 () Bool)

(assert (=> start!39112 tp_is_empty!10523))

(assert (=> start!39112 tp!33641))

(assert (=> start!39112 true))

(declare-datatypes ((V!15135 0))(
  ( (V!15136 (val!5306 Int)) )
))
(declare-datatypes ((ValueCell!4918 0))(
  ( (ValueCellFull!4918 (v!7549 V!15135)) (EmptyCell!4918) )
))
(declare-datatypes ((array!24897 0))(
  ( (array!24898 (arr!11895 (Array (_ BitVec 32) ValueCell!4918)) (size!12247 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24897)

(declare-fun e!246106 () Bool)

(declare-fun array_inv!8682 (array!24897) Bool)

(assert (=> start!39112 (and (array_inv!8682 _values!549) e!246106)))

(declare-fun array_inv!8683 (array!24895) Bool)

(assert (=> start!39112 (array_inv!8683 _keys!709)))

(declare-fun b!410762 () Bool)

(declare-fun res!238266 () Bool)

(assert (=> b!410762 (=> (not res!238266) (not e!246108))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!410762 (= res!238266 (and (= (size!12247 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12246 _keys!709) (size!12247 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!17406 () Bool)

(declare-fun tp!33642 () Bool)

(declare-fun e!246109 () Bool)

(assert (=> mapNonEmpty!17406 (= mapRes!17406 (and tp!33642 e!246109))))

(declare-fun mapKey!17406 () (_ BitVec 32))

(declare-fun mapValue!17406 () ValueCell!4918)

(declare-fun mapRest!17406 () (Array (_ BitVec 32) ValueCell!4918))

(assert (=> mapNonEmpty!17406 (= (arr!11895 _values!549) (store mapRest!17406 mapKey!17406 mapValue!17406))))

(declare-fun b!410763 () Bool)

(declare-fun res!238257 () Bool)

(assert (=> b!410763 (=> (not res!238257) (not e!246108))))

(assert (=> b!410763 (= res!238257 (or (= (select (arr!11894 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11894 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!410764 () Bool)

(declare-fun res!238261 () Bool)

(assert (=> b!410764 (=> (not res!238261) (not e!246108))))

(declare-datatypes ((List!6873 0))(
  ( (Nil!6870) (Cons!6869 (h!7725 (_ BitVec 64)) (t!12055 List!6873)) )
))
(declare-fun arrayNoDuplicates!0 (array!24895 (_ BitVec 32) List!6873) Bool)

(assert (=> b!410764 (= res!238261 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6870))))

(declare-fun b!410765 () Bool)

(declare-fun res!238259 () Bool)

(assert (=> b!410765 (=> (not res!238259) (not e!246108))))

(assert (=> b!410765 (= res!238259 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12246 _keys!709))))))

(declare-fun b!410766 () Bool)

(declare-fun e!246105 () Bool)

(assert (=> b!410766 (= e!246105 tp_is_empty!10523)))

(declare-fun b!410767 () Bool)

(assert (=> b!410767 (= e!246106 (and e!246105 mapRes!17406))))

(declare-fun condMapEmpty!17406 () Bool)

(declare-fun mapDefault!17406 () ValueCell!4918)

