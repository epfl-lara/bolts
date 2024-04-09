; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20292 () Bool)

(assert start!20292)

(declare-fun b_free!4939 () Bool)

(declare-fun b_next!4939 () Bool)

(assert (=> start!20292 (= b_free!4939 (not b_next!4939))))

(declare-fun tp!17848 () Bool)

(declare-fun b_and!11703 () Bool)

(assert (=> start!20292 (= tp!17848 b_and!11703)))

(declare-fun b!199590 () Bool)

(declare-fun res!94919 () Bool)

(declare-fun e!131002 () Bool)

(assert (=> b!199590 (=> (not res!94919) (not e!131002))))

(declare-datatypes ((array!8828 0))(
  ( (array!8829 (arr!4164 (Array (_ BitVec 32) (_ BitVec 64))) (size!4489 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8828)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!199590 (= res!94919 (= (select (arr!4164 _keys!825) i!601) k!843))))

(declare-fun b!199591 () Bool)

(declare-fun res!94922 () Bool)

(assert (=> b!199591 (=> (not res!94922) (not e!131002))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8828 (_ BitVec 32)) Bool)

(assert (=> b!199591 (= res!94922 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!199592 () Bool)

(declare-fun res!94923 () Bool)

(assert (=> b!199592 (=> (not res!94923) (not e!131002))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!199592 (= res!94923 (validKeyInArray!0 k!843))))

(declare-fun b!199593 () Bool)

(declare-fun res!94920 () Bool)

(assert (=> b!199593 (=> (not res!94920) (not e!131002))))

(assert (=> b!199593 (= res!94920 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4489 _keys!825))))))

(declare-fun b!199594 () Bool)

(declare-fun res!94924 () Bool)

(assert (=> b!199594 (=> (not res!94924) (not e!131002))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6041 0))(
  ( (V!6042 (val!2442 Int)) )
))
(declare-datatypes ((ValueCell!2054 0))(
  ( (ValueCellFull!2054 (v!4408 V!6041)) (EmptyCell!2054) )
))
(declare-datatypes ((array!8830 0))(
  ( (array!8831 (arr!4165 (Array (_ BitVec 32) ValueCell!2054)) (size!4490 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8830)

(assert (=> b!199594 (= res!94924 (and (= (size!4490 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4489 _keys!825) (size!4490 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!94921 () Bool)

(assert (=> start!20292 (=> (not res!94921) (not e!131002))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20292 (= res!94921 (validMask!0 mask!1149))))

(assert (=> start!20292 e!131002))

(declare-fun e!131001 () Bool)

(declare-fun array_inv!2725 (array!8830) Bool)

(assert (=> start!20292 (and (array_inv!2725 _values!649) e!131001)))

(assert (=> start!20292 true))

(declare-fun tp_is_empty!4795 () Bool)

(assert (=> start!20292 tp_is_empty!4795))

(declare-fun array_inv!2726 (array!8828) Bool)

(assert (=> start!20292 (array_inv!2726 _keys!825)))

(assert (=> start!20292 tp!17848))

(declare-fun b!199595 () Bool)

(declare-fun e!131003 () Bool)

(assert (=> b!199595 (= e!131003 tp_is_empty!4795)))

(declare-fun b!199596 () Bool)

(declare-fun res!94918 () Bool)

(assert (=> b!199596 (=> (not res!94918) (not e!131002))))

(declare-datatypes ((List!2630 0))(
  ( (Nil!2627) (Cons!2626 (h!3268 (_ BitVec 64)) (t!7569 List!2630)) )
))
(declare-fun arrayNoDuplicates!0 (array!8828 (_ BitVec 32) List!2630) Bool)

(assert (=> b!199596 (= res!94918 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2627))))

(declare-fun b!199597 () Bool)

(declare-fun mapRes!8261 () Bool)

(assert (=> b!199597 (= e!131001 (and e!131003 mapRes!8261))))

(declare-fun condMapEmpty!8261 () Bool)

(declare-fun mapDefault!8261 () ValueCell!2054)

