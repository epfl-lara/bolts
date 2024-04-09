; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38986 () Bool)

(assert start!38986)

(declare-fun b!408068 () Bool)

(declare-fun res!236134 () Bool)

(declare-fun e!244972 () Bool)

(assert (=> b!408068 (=> (not res!236134) (not e!244972))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!408068 (= res!236134 (validKeyInArray!0 k!794))))

(declare-fun b!408069 () Bool)

(declare-fun e!244975 () Bool)

(declare-fun tp_is_empty!10397 () Bool)

(assert (=> b!408069 (= e!244975 tp_is_empty!10397)))

(declare-fun mapNonEmpty!17217 () Bool)

(declare-fun mapRes!17217 () Bool)

(declare-fun tp!33336 () Bool)

(declare-fun e!244970 () Bool)

(assert (=> mapNonEmpty!17217 (= mapRes!17217 (and tp!33336 e!244970))))

(declare-datatypes ((V!14967 0))(
  ( (V!14968 (val!5243 Int)) )
))
(declare-datatypes ((ValueCell!4855 0))(
  ( (ValueCellFull!4855 (v!7486 V!14967)) (EmptyCell!4855) )
))
(declare-fun mapValue!17217 () ValueCell!4855)

(declare-datatypes ((array!24649 0))(
  ( (array!24650 (arr!11771 (Array (_ BitVec 32) ValueCell!4855)) (size!12123 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24649)

(declare-fun mapKey!17217 () (_ BitVec 32))

(declare-fun mapRest!17217 () (Array (_ BitVec 32) ValueCell!4855))

(assert (=> mapNonEmpty!17217 (= (arr!11771 _values!549) (store mapRest!17217 mapKey!17217 mapValue!17217))))

(declare-fun b!408070 () Bool)

(declare-fun res!236135 () Bool)

(assert (=> b!408070 (=> (not res!236135) (not e!244972))))

(declare-datatypes ((array!24651 0))(
  ( (array!24652 (arr!11772 (Array (_ BitVec 32) (_ BitVec 64))) (size!12124 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24651)

(declare-datatypes ((List!6802 0))(
  ( (Nil!6799) (Cons!6798 (h!7654 (_ BitVec 64)) (t!11984 List!6802)) )
))
(declare-fun arrayNoDuplicates!0 (array!24651 (_ BitVec 32) List!6802) Bool)

(assert (=> b!408070 (= res!236135 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6799))))

(declare-fun b!408071 () Bool)

(declare-fun res!236137 () Bool)

(assert (=> b!408071 (=> (not res!236137) (not e!244972))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24651 (_ BitVec 32)) Bool)

(assert (=> b!408071 (= res!236137 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!408072 () Bool)

(declare-fun res!236142 () Bool)

(assert (=> b!408072 (=> (not res!236142) (not e!244972))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!408072 (= res!236142 (or (= (select (arr!11772 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11772 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!408073 () Bool)

(declare-fun res!236140 () Bool)

(assert (=> b!408073 (=> (not res!236140) (not e!244972))))

(assert (=> b!408073 (= res!236140 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12124 _keys!709))))))

(declare-fun b!408074 () Bool)

(declare-fun res!236141 () Bool)

(assert (=> b!408074 (=> (not res!236141) (not e!244972))))

(declare-fun arrayContainsKey!0 (array!24651 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!408074 (= res!236141 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun res!236138 () Bool)

(assert (=> start!38986 (=> (not res!236138) (not e!244972))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38986 (= res!236138 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12124 _keys!709))))))

(assert (=> start!38986 e!244972))

(assert (=> start!38986 true))

(declare-fun e!244971 () Bool)

(declare-fun array_inv!8598 (array!24649) Bool)

(assert (=> start!38986 (and (array_inv!8598 _values!549) e!244971)))

(declare-fun array_inv!8599 (array!24651) Bool)

(assert (=> start!38986 (array_inv!8599 _keys!709)))

(declare-fun b!408075 () Bool)

(declare-fun e!244973 () Bool)

(assert (=> b!408075 (= e!244973 false)))

(declare-fun lt!188732 () Bool)

(declare-fun lt!188733 () array!24651)

(assert (=> b!408075 (= lt!188732 (arrayNoDuplicates!0 lt!188733 #b00000000000000000000000000000000 Nil!6799))))

(declare-fun b!408076 () Bool)

(assert (=> b!408076 (= e!244971 (and e!244975 mapRes!17217))))

(declare-fun condMapEmpty!17217 () Bool)

(declare-fun mapDefault!17217 () ValueCell!4855)

