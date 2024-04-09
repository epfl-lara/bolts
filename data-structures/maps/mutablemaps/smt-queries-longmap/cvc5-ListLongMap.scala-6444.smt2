; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82532 () Bool)

(assert start!82532)

(declare-fun b!961364 () Bool)

(declare-fun res!643524 () Bool)

(declare-fun e!542110 () Bool)

(assert (=> b!961364 (=> (not res!643524) (not e!542110))))

(declare-datatypes ((array!58973 0))(
  ( (array!58974 (arr!28351 (Array (_ BitVec 32) (_ BitVec 64))) (size!28831 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!58973)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58973 (_ BitVec 32)) Bool)

(assert (=> b!961364 (= res!643524 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun mapNonEmpty!34153 () Bool)

(declare-fun mapRes!34153 () Bool)

(declare-fun tp!65083 () Bool)

(declare-fun e!542109 () Bool)

(assert (=> mapNonEmpty!34153 (= mapRes!34153 (and tp!65083 e!542109))))

(declare-datatypes ((V!33569 0))(
  ( (V!33570 (val!10770 Int)) )
))
(declare-datatypes ((ValueCell!10238 0))(
  ( (ValueCellFull!10238 (v!13328 V!33569)) (EmptyCell!10238) )
))
(declare-fun mapValue!34153 () ValueCell!10238)

(declare-fun mapRest!34153 () (Array (_ BitVec 32) ValueCell!10238))

(declare-datatypes ((array!58975 0))(
  ( (array!58976 (arr!28352 (Array (_ BitVec 32) ValueCell!10238)) (size!28832 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!58975)

(declare-fun mapKey!34153 () (_ BitVec 32))

(assert (=> mapNonEmpty!34153 (= (arr!28352 _values!1400) (store mapRest!34153 mapKey!34153 mapValue!34153))))

(declare-fun b!961365 () Bool)

(assert (=> b!961365 (= e!542110 false)))

(declare-fun lt!430713 () Bool)

(declare-datatypes ((List!19811 0))(
  ( (Nil!19808) (Cons!19807 (h!20969 (_ BitVec 64)) (t!28182 List!19811)) )
))
(declare-fun arrayNoDuplicates!0 (array!58973 (_ BitVec 32) List!19811) Bool)

(assert (=> b!961365 (= lt!430713 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19808))))

(declare-fun b!961366 () Bool)

(declare-fun tp_is_empty!21439 () Bool)

(assert (=> b!961366 (= e!542109 tp_is_empty!21439)))

(declare-fun b!961367 () Bool)

(declare-fun e!542112 () Bool)

(declare-fun e!542113 () Bool)

(assert (=> b!961367 (= e!542112 (and e!542113 mapRes!34153))))

(declare-fun condMapEmpty!34153 () Bool)

(declare-fun mapDefault!34153 () ValueCell!10238)

