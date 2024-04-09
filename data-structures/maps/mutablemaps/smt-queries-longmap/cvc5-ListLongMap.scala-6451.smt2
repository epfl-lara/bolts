; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82574 () Bool)

(assert start!82574)

(declare-fun b_free!18679 () Bool)

(declare-fun b_next!18679 () Bool)

(assert (=> start!82574 (= b_free!18679 (not b_next!18679))))

(declare-fun tp!65157 () Bool)

(declare-fun b_and!30185 () Bool)

(assert (=> start!82574 (= tp!65157 b_and!30185)))

(declare-fun b!961802 () Bool)

(declare-fun e!542428 () Bool)

(assert (=> b!961802 (= e!542428 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33625 0))(
  ( (V!33626 (val!10791 Int)) )
))
(declare-datatypes ((ValueCell!10259 0))(
  ( (ValueCellFull!10259 (v!13349 V!33625)) (EmptyCell!10259) )
))
(declare-datatypes ((array!59047 0))(
  ( (array!59048 (arr!28388 (Array (_ BitVec 32) ValueCell!10259)) (size!28868 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59047)

(declare-datatypes ((array!59049 0))(
  ( (array!59050 (arr!28389 (Array (_ BitVec 32) (_ BitVec 64))) (size!28869 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59049)

(declare-fun minValue!1342 () V!33625)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun lt!430767 () Bool)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33625)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!13946 0))(
  ( (tuple2!13947 (_1!6983 (_ BitVec 64)) (_2!6983 V!33625)) )
))
(declare-datatypes ((List!19828 0))(
  ( (Nil!19825) (Cons!19824 (h!20986 tuple2!13946) (t!28199 List!19828)) )
))
(declare-datatypes ((ListLongMap!12657 0))(
  ( (ListLongMap!12658 (toList!6344 List!19828)) )
))
(declare-fun contains!5398 (ListLongMap!12657 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3529 (array!59049 array!59047 (_ BitVec 32) (_ BitVec 32) V!33625 V!33625 (_ BitVec 32) Int) ListLongMap!12657)

(assert (=> b!961802 (= lt!430767 (contains!5398 (getCurrentListMap!3529 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28389 _keys!1686) i!803)))))

(declare-fun b!961803 () Bool)

(declare-fun res!643777 () Bool)

(assert (=> b!961803 (=> (not res!643777) (not e!542428))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!961803 (= res!643777 (validKeyInArray!0 (select (arr!28389 _keys!1686) i!803)))))

(declare-fun b!961804 () Bool)

(declare-fun e!542424 () Bool)

(declare-fun e!542425 () Bool)

(declare-fun mapRes!34216 () Bool)

(assert (=> b!961804 (= e!542424 (and e!542425 mapRes!34216))))

(declare-fun condMapEmpty!34216 () Bool)

(declare-fun mapDefault!34216 () ValueCell!10259)

