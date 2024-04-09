; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20298 () Bool)

(assert start!20298)

(declare-fun b_free!4945 () Bool)

(declare-fun b_next!4945 () Bool)

(assert (=> start!20298 (= b_free!4945 (not b_next!4945))))

(declare-fun tp!17867 () Bool)

(declare-fun b_and!11709 () Bool)

(assert (=> start!20298 (= tp!17867 b_and!11709)))

(declare-fun b!199680 () Bool)

(declare-fun res!94982 () Bool)

(declare-fun e!131048 () Bool)

(assert (=> b!199680 (=> (not res!94982) (not e!131048))))

(declare-datatypes ((array!8840 0))(
  ( (array!8841 (arr!4170 (Array (_ BitVec 32) (_ BitVec 64))) (size!4495 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8840)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8840 (_ BitVec 32)) Bool)

(assert (=> b!199680 (= res!94982 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!199681 () Bool)

(declare-fun res!94981 () Bool)

(assert (=> b!199681 (=> (not res!94981) (not e!131048))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6049 0))(
  ( (V!6050 (val!2445 Int)) )
))
(declare-datatypes ((ValueCell!2057 0))(
  ( (ValueCellFull!2057 (v!4411 V!6049)) (EmptyCell!2057) )
))
(declare-datatypes ((array!8842 0))(
  ( (array!8843 (arr!4171 (Array (_ BitVec 32) ValueCell!2057)) (size!4496 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8842)

(assert (=> b!199681 (= res!94981 (and (= (size!4496 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4495 _keys!825) (size!4496 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!199682 () Bool)

(declare-fun res!94987 () Bool)

(assert (=> b!199682 (=> (not res!94987) (not e!131048))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!199682 (= res!94987 (validKeyInArray!0 k!843))))

(declare-fun res!94984 () Bool)

(assert (=> start!20298 (=> (not res!94984) (not e!131048))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20298 (= res!94984 (validMask!0 mask!1149))))

(assert (=> start!20298 e!131048))

(declare-fun e!131049 () Bool)

(declare-fun array_inv!2731 (array!8842) Bool)

(assert (=> start!20298 (and (array_inv!2731 _values!649) e!131049)))

(assert (=> start!20298 true))

(declare-fun tp_is_empty!4801 () Bool)

(assert (=> start!20298 tp_is_empty!4801))

(declare-fun array_inv!2732 (array!8840) Bool)

(assert (=> start!20298 (array_inv!2732 _keys!825)))

(assert (=> start!20298 tp!17867))

(declare-fun b!199683 () Bool)

(declare-fun res!94985 () Bool)

(assert (=> b!199683 (=> (not res!94985) (not e!131048))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!199683 (= res!94985 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4495 _keys!825))))))

(declare-fun mapIsEmpty!8270 () Bool)

(declare-fun mapRes!8270 () Bool)

(assert (=> mapIsEmpty!8270 mapRes!8270))

(declare-fun b!199684 () Bool)

(declare-fun e!131047 () Bool)

(assert (=> b!199684 (= e!131049 (and e!131047 mapRes!8270))))

(declare-fun condMapEmpty!8270 () Bool)

(declare-fun mapDefault!8270 () ValueCell!2057)

