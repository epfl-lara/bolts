; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77518 () Bool)

(assert start!77518)

(declare-fun mapIsEmpty!29464 () Bool)

(declare-fun mapRes!29464 () Bool)

(assert (=> mapIsEmpty!29464 mapRes!29464))

(declare-fun b!902842 () Bool)

(declare-fun res!609304 () Bool)

(declare-fun e!505811 () Bool)

(assert (=> b!902842 (=> (not res!609304) (not e!505811))))

(declare-datatypes ((V!29635 0))(
  ( (V!29636 (val!9302 Int)) )
))
(declare-datatypes ((ValueCell!8770 0))(
  ( (ValueCellFull!8770 (v!11807 V!29635)) (EmptyCell!8770) )
))
(declare-datatypes ((array!53052 0))(
  ( (array!53053 (arr!25482 (Array (_ BitVec 32) ValueCell!8770)) (size!25942 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53052)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!53054 0))(
  ( (array!53055 (arr!25483 (Array (_ BitVec 32) (_ BitVec 64))) (size!25943 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53054)

(assert (=> b!902842 (= res!609304 (and (= (size!25942 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25943 _keys!1386) (size!25942 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!29464 () Bool)

(declare-fun tp!56524 () Bool)

(declare-fun e!505809 () Bool)

(assert (=> mapNonEmpty!29464 (= mapRes!29464 (and tp!56524 e!505809))))

(declare-fun mapValue!29464 () ValueCell!8770)

(declare-fun mapRest!29464 () (Array (_ BitVec 32) ValueCell!8770))

(declare-fun mapKey!29464 () (_ BitVec 32))

(assert (=> mapNonEmpty!29464 (= (arr!25482 _values!1152) (store mapRest!29464 mapKey!29464 mapValue!29464))))

(declare-fun b!902844 () Bool)

(declare-fun res!609306 () Bool)

(assert (=> b!902844 (=> (not res!609306) (not e!505811))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53054 (_ BitVec 32)) Bool)

(assert (=> b!902844 (= res!609306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!902845 () Bool)

(declare-fun tp_is_empty!18503 () Bool)

(assert (=> b!902845 (= e!505809 tp_is_empty!18503)))

(declare-fun b!902846 () Bool)

(declare-fun e!505810 () Bool)

(assert (=> b!902846 (= e!505810 tp_is_empty!18503)))

(declare-fun b!902847 () Bool)

(declare-fun e!505807 () Bool)

(assert (=> b!902847 (= e!505807 (and e!505810 mapRes!29464))))

(declare-fun condMapEmpty!29464 () Bool)

(declare-fun mapDefault!29464 () ValueCell!8770)

