; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38974 () Bool)

(assert start!38974)

(declare-fun mapIsEmpty!17199 () Bool)

(declare-fun mapRes!17199 () Bool)

(assert (=> mapIsEmpty!17199 mapRes!17199))

(declare-fun b!407834 () Bool)

(declare-fun res!235957 () Bool)

(declare-fun e!244866 () Bool)

(assert (=> b!407834 (=> (not res!235957) (not e!244866))))

(declare-datatypes ((array!24625 0))(
  ( (array!24626 (arr!11759 (Array (_ BitVec 32) (_ BitVec 64))) (size!12111 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24625)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24625 (_ BitVec 32)) Bool)

(assert (=> b!407834 (= res!235957 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!407835 () Bool)

(declare-fun e!244867 () Bool)

(declare-fun tp_is_empty!10385 () Bool)

(assert (=> b!407835 (= e!244867 tp_is_empty!10385)))

(declare-fun b!407836 () Bool)

(declare-fun res!235962 () Bool)

(assert (=> b!407836 (=> (not res!235962) (not e!244866))))

(declare-datatypes ((List!6796 0))(
  ( (Nil!6793) (Cons!6792 (h!7648 (_ BitVec 64)) (t!11978 List!6796)) )
))
(declare-fun arrayNoDuplicates!0 (array!24625 (_ BitVec 32) List!6796) Bool)

(assert (=> b!407836 (= res!235962 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6793))))

(declare-fun res!235955 () Bool)

(assert (=> start!38974 (=> (not res!235955) (not e!244866))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38974 (= res!235955 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12111 _keys!709))))))

(assert (=> start!38974 e!244866))

(assert (=> start!38974 true))

(declare-datatypes ((V!14951 0))(
  ( (V!14952 (val!5237 Int)) )
))
(declare-datatypes ((ValueCell!4849 0))(
  ( (ValueCellFull!4849 (v!7480 V!14951)) (EmptyCell!4849) )
))
(declare-datatypes ((array!24627 0))(
  ( (array!24628 (arr!11760 (Array (_ BitVec 32) ValueCell!4849)) (size!12112 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24627)

(declare-fun e!244863 () Bool)

(declare-fun array_inv!8586 (array!24627) Bool)

(assert (=> start!38974 (and (array_inv!8586 _values!549) e!244863)))

(declare-fun array_inv!8587 (array!24625) Bool)

(assert (=> start!38974 (array_inv!8587 _keys!709)))

(declare-fun b!407837 () Bool)

(declare-fun res!235953 () Bool)

(assert (=> b!407837 (=> (not res!235953) (not e!244866))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!407837 (= res!235953 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12111 _keys!709))))))

(declare-fun b!407838 () Bool)

(declare-fun res!235959 () Bool)

(assert (=> b!407838 (=> (not res!235959) (not e!244866))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!407838 (= res!235959 (and (= (size!12112 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12111 _keys!709) (size!12112 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!407839 () Bool)

(declare-fun res!235958 () Bool)

(assert (=> b!407839 (=> (not res!235958) (not e!244866))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!407839 (= res!235958 (validKeyInArray!0 k!794))))

(declare-fun b!407840 () Bool)

(declare-fun res!235961 () Bool)

(assert (=> b!407840 (=> (not res!235961) (not e!244866))))

(declare-fun arrayContainsKey!0 (array!24625 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!407840 (= res!235961 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!407841 () Bool)

(declare-fun res!235956 () Bool)

(assert (=> b!407841 (=> (not res!235956) (not e!244866))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!407841 (= res!235956 (validMask!0 mask!1025))))

(declare-fun b!407842 () Bool)

(assert (=> b!407842 (= e!244863 (and e!244867 mapRes!17199))))

(declare-fun condMapEmpty!17199 () Bool)

(declare-fun mapDefault!17199 () ValueCell!4849)

