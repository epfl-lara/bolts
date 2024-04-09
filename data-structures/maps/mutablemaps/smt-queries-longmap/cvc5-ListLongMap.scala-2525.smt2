; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38976 () Bool)

(assert start!38976)

(declare-fun b!407873 () Bool)

(declare-fun e!244885 () Bool)

(declare-fun tp_is_empty!10387 () Bool)

(assert (=> b!407873 (= e!244885 tp_is_empty!10387)))

(declare-fun res!235983 () Bool)

(declare-fun e!244884 () Bool)

(assert (=> start!38976 (=> (not res!235983) (not e!244884))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!24629 0))(
  ( (array!24630 (arr!11761 (Array (_ BitVec 32) (_ BitVec 64))) (size!12113 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24629)

(assert (=> start!38976 (= res!235983 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12113 _keys!709))))))

(assert (=> start!38976 e!244884))

(assert (=> start!38976 true))

(declare-datatypes ((V!14955 0))(
  ( (V!14956 (val!5238 Int)) )
))
(declare-datatypes ((ValueCell!4850 0))(
  ( (ValueCellFull!4850 (v!7481 V!14955)) (EmptyCell!4850) )
))
(declare-datatypes ((array!24631 0))(
  ( (array!24632 (arr!11762 (Array (_ BitVec 32) ValueCell!4850)) (size!12114 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24631)

(declare-fun e!244881 () Bool)

(declare-fun array_inv!8588 (array!24631) Bool)

(assert (=> start!38976 (and (array_inv!8588 _values!549) e!244881)))

(declare-fun array_inv!8589 (array!24629) Bool)

(assert (=> start!38976 (array_inv!8589 _keys!709)))

(declare-fun b!407874 () Bool)

(declare-fun res!235987 () Bool)

(assert (=> b!407874 (=> (not res!235987) (not e!244884))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!407874 (= res!235987 (validKeyInArray!0 k!794))))

(declare-fun b!407875 () Bool)

(declare-fun res!235985 () Bool)

(assert (=> b!407875 (=> (not res!235985) (not e!244884))))

(declare-fun arrayContainsKey!0 (array!24629 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!407875 (= res!235985 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!17202 () Bool)

(declare-fun mapRes!17202 () Bool)

(declare-fun tp!33321 () Bool)

(assert (=> mapNonEmpty!17202 (= mapRes!17202 (and tp!33321 e!244885))))

(declare-fun mapRest!17202 () (Array (_ BitVec 32) ValueCell!4850))

(declare-fun mapKey!17202 () (_ BitVec 32))

(declare-fun mapValue!17202 () ValueCell!4850)

(assert (=> mapNonEmpty!17202 (= (arr!11762 _values!549) (store mapRest!17202 mapKey!17202 mapValue!17202))))

(declare-fun b!407876 () Bool)

(declare-fun res!235988 () Bool)

(assert (=> b!407876 (=> (not res!235988) (not e!244884))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!407876 (= res!235988 (and (= (size!12114 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12113 _keys!709) (size!12114 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!407877 () Bool)

(declare-fun e!244882 () Bool)

(assert (=> b!407877 (= e!244882 tp_is_empty!10387)))

(declare-fun b!407878 () Bool)

(declare-fun res!235990 () Bool)

(assert (=> b!407878 (=> (not res!235990) (not e!244884))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!407878 (= res!235990 (validMask!0 mask!1025))))

(declare-fun b!407879 () Bool)

(declare-fun e!244883 () Bool)

(assert (=> b!407879 (= e!244883 false)))

(declare-fun lt!188702 () Bool)

(declare-fun lt!188703 () array!24629)

(declare-datatypes ((List!6797 0))(
  ( (Nil!6794) (Cons!6793 (h!7649 (_ BitVec 64)) (t!11979 List!6797)) )
))
(declare-fun arrayNoDuplicates!0 (array!24629 (_ BitVec 32) List!6797) Bool)

(assert (=> b!407879 (= lt!188702 (arrayNoDuplicates!0 lt!188703 #b00000000000000000000000000000000 Nil!6794))))

(declare-fun mapIsEmpty!17202 () Bool)

(assert (=> mapIsEmpty!17202 mapRes!17202))

(declare-fun b!407880 () Bool)

(declare-fun res!235986 () Bool)

(assert (=> b!407880 (=> (not res!235986) (not e!244884))))

(assert (=> b!407880 (= res!235986 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6794))))

(declare-fun b!407881 () Bool)

(declare-fun res!235984 () Bool)

(assert (=> b!407881 (=> (not res!235984) (not e!244884))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!407881 (= res!235984 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12113 _keys!709))))))

(declare-fun b!407882 () Bool)

(assert (=> b!407882 (= e!244881 (and e!244882 mapRes!17202))))

(declare-fun condMapEmpty!17202 () Bool)

(declare-fun mapDefault!17202 () ValueCell!4850)

