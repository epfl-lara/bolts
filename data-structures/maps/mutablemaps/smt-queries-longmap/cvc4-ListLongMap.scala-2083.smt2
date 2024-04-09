; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35678 () Bool)

(assert start!35678)

(declare-fun mapIsEmpty!13692 () Bool)

(declare-fun mapRes!13692 () Bool)

(assert (=> mapIsEmpty!13692 mapRes!13692))

(declare-fun b!358112 () Bool)

(declare-fun res!199125 () Bool)

(declare-fun e!219187 () Bool)

(assert (=> b!358112 (=> (not res!199125) (not e!219187))))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!358112 (= res!199125 (validKeyInArray!0 k!1077))))

(declare-fun b!358113 () Bool)

(declare-fun e!219188 () Bool)

(declare-fun tp_is_empty!8123 () Bool)

(assert (=> b!358113 (= e!219188 tp_is_empty!8123)))

(declare-fun res!199126 () Bool)

(assert (=> start!35678 (=> (not res!199126) (not e!219187))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35678 (= res!199126 (validMask!0 mask!1842))))

(assert (=> start!35678 e!219187))

(assert (=> start!35678 true))

(declare-datatypes ((array!19775 0))(
  ( (array!19776 (arr!9378 (Array (_ BitVec 32) (_ BitVec 64))) (size!9730 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19775)

(declare-fun array_inv!6894 (array!19775) Bool)

(assert (=> start!35678 (array_inv!6894 _keys!1456)))

(declare-datatypes ((V!11807 0))(
  ( (V!11808 (val!4106 Int)) )
))
(declare-datatypes ((ValueCell!3718 0))(
  ( (ValueCellFull!3718 (v!6296 V!11807)) (EmptyCell!3718) )
))
(declare-datatypes ((array!19777 0))(
  ( (array!19778 (arr!9379 (Array (_ BitVec 32) ValueCell!3718)) (size!9731 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19777)

(declare-fun e!219191 () Bool)

(declare-fun array_inv!6895 (array!19777) Bool)

(assert (=> start!35678 (and (array_inv!6895 _values!1208) e!219191)))

(declare-fun b!358114 () Bool)

(declare-fun res!199122 () Bool)

(assert (=> b!358114 (=> (not res!199122) (not e!219187))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!19775 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!358114 (= res!199122 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!358115 () Bool)

(declare-fun e!219189 () Bool)

(assert (=> b!358115 (= e!219189 tp_is_empty!8123)))

(declare-fun b!358116 () Bool)

(assert (=> b!358116 (= e!219191 (and e!219189 mapRes!13692))))

(declare-fun condMapEmpty!13692 () Bool)

(declare-fun mapDefault!13692 () ValueCell!3718)

