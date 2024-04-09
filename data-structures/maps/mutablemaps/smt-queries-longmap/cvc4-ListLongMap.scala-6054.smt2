; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78346 () Bool)

(assert start!78346)

(declare-fun b_free!16739 () Bool)

(declare-fun b_next!16739 () Bool)

(assert (=> start!78346 (= b_free!16739 (not b_next!16739))))

(declare-fun tp!58501 () Bool)

(declare-fun b_and!27351 () Bool)

(assert (=> start!78346 (= tp!58501 b_and!27351)))

(declare-fun b!913679 () Bool)

(declare-fun res!616375 () Bool)

(declare-fun e!512552 () Bool)

(assert (=> b!913679 (=> (not res!616375) (not e!512552))))

(declare-datatypes ((V!30507 0))(
  ( (V!30508 (val!9629 Int)) )
))
(declare-datatypes ((ValueCell!9097 0))(
  ( (ValueCellFull!9097 (v!12143 V!30507)) (EmptyCell!9097) )
))
(declare-datatypes ((array!54320 0))(
  ( (array!54321 (arr!26108 (Array (_ BitVec 32) ValueCell!9097)) (size!26568 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54320)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30507)

(declare-datatypes ((array!54322 0))(
  ( (array!54323 (arr!26109 (Array (_ BitVec 32) (_ BitVec 64))) (size!26569 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54322)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30507)

(declare-datatypes ((tuple2!12610 0))(
  ( (tuple2!12611 (_1!6315 (_ BitVec 64)) (_2!6315 V!30507)) )
))
(declare-datatypes ((List!18449 0))(
  ( (Nil!18446) (Cons!18445 (h!19591 tuple2!12610) (t!26056 List!18449)) )
))
(declare-datatypes ((ListLongMap!11321 0))(
  ( (ListLongMap!11322 (toList!5676 List!18449)) )
))
(declare-fun contains!4690 (ListLongMap!11321 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2906 (array!54322 array!54320 (_ BitVec 32) (_ BitVec 32) V!30507 V!30507 (_ BitVec 32) Int) ListLongMap!11321)

(assert (=> b!913679 (= res!616375 (contains!4690 (getCurrentListMap!2906 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!913680 () Bool)

(declare-fun e!512555 () Bool)

(declare-fun e!512553 () Bool)

(assert (=> b!913680 (= e!512555 e!512553)))

(declare-fun res!616371 () Bool)

(assert (=> b!913680 (=> res!616371 e!512553)))

(declare-fun lt!411068 () ListLongMap!11321)

(assert (=> b!913680 (= res!616371 (not (contains!4690 lt!411068 k!1033)))))

(declare-fun i!717 () (_ BitVec 32))

(assert (=> b!913680 (= lt!411068 (getCurrentListMap!2906 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!913681 () Bool)

(assert (=> b!913681 (= e!512552 (not e!512555))))

(declare-fun res!616370 () Bool)

(assert (=> b!913681 (=> res!616370 e!512555)))

(assert (=> b!913681 (= res!616370 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26569 _keys!1386))))))

(declare-fun arrayContainsKey!0 (array!54322 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!913681 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30905 0))(
  ( (Unit!30906) )
))
(declare-fun lt!411069 () Unit!30905)

(declare-fun lemmaKeyInListMapIsInArray!291 (array!54322 array!54320 (_ BitVec 32) (_ BitVec 32) V!30507 V!30507 (_ BitVec 64) Int) Unit!30905)

(assert (=> b!913681 (= lt!411069 (lemmaKeyInListMapIsInArray!291 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!913682 () Bool)

(declare-fun res!616368 () Bool)

(assert (=> b!913682 (=> (not res!616368) (not e!512552))))

(declare-datatypes ((List!18450 0))(
  ( (Nil!18447) (Cons!18446 (h!19592 (_ BitVec 64)) (t!26057 List!18450)) )
))
(declare-fun arrayNoDuplicates!0 (array!54322 (_ BitVec 32) List!18450) Bool)

(assert (=> b!913682 (= res!616368 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18447))))

(declare-fun res!616369 () Bool)

(assert (=> start!78346 (=> (not res!616369) (not e!512552))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78346 (= res!616369 (validMask!0 mask!1756))))

(assert (=> start!78346 e!512552))

(declare-fun e!512550 () Bool)

(declare-fun array_inv!20380 (array!54320) Bool)

(assert (=> start!78346 (and (array_inv!20380 _values!1152) e!512550)))

(assert (=> start!78346 tp!58501))

(assert (=> start!78346 true))

(declare-fun tp_is_empty!19157 () Bool)

(assert (=> start!78346 tp_is_empty!19157))

(declare-fun array_inv!20381 (array!54322) Bool)

(assert (=> start!78346 (array_inv!20381 _keys!1386)))

(declare-fun b!913683 () Bool)

(declare-fun res!616373 () Bool)

(assert (=> b!913683 (=> (not res!616373) (not e!512552))))

(assert (=> b!913683 (= res!616373 (and (= (size!26568 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26569 _keys!1386) (size!26568 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!913684 () Bool)

(declare-fun res!616372 () Bool)

(assert (=> b!913684 (=> (not res!616372) (not e!512552))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!913684 (= res!616372 (inRange!0 i!717 mask!1756))))

(declare-fun b!913685 () Bool)

(declare-fun e!512554 () Bool)

(assert (=> b!913685 (= e!512554 tp_is_empty!19157)))

(declare-fun b!913686 () Bool)

(declare-fun e!512551 () Bool)

(assert (=> b!913686 (= e!512551 tp_is_empty!19157)))

(declare-fun b!913687 () Bool)

(declare-fun apply!532 (ListLongMap!11321 (_ BitVec 64)) V!30507)

(declare-fun get!13717 (ValueCell!9097 V!30507) V!30507)

(declare-fun dynLambda!1399 (Int (_ BitVec 64)) V!30507)

(assert (=> b!913687 (= e!512553 (= (apply!532 lt!411068 k!1033) (get!13717 (select (arr!26108 _values!1152) i!717) (dynLambda!1399 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!913688 () Bool)

(declare-fun mapRes!30470 () Bool)

(assert (=> b!913688 (= e!512550 (and e!512554 mapRes!30470))))

(declare-fun condMapEmpty!30470 () Bool)

(declare-fun mapDefault!30470 () ValueCell!9097)

