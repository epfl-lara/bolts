; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77398 () Bool)

(assert start!77398)

(declare-fun mapNonEmpty!29335 () Bool)

(declare-fun mapRes!29335 () Bool)

(declare-fun tp!56395 () Bool)

(declare-fun e!505145 () Bool)

(assert (=> mapNonEmpty!29335 (= mapRes!29335 (and tp!56395 e!505145))))

(declare-datatypes ((V!29535 0))(
  ( (V!29536 (val!9264 Int)) )
))
(declare-datatypes ((ValueCell!8732 0))(
  ( (ValueCellFull!8732 (v!11768 V!29535)) (EmptyCell!8732) )
))
(declare-datatypes ((array!52902 0))(
  ( (array!52903 (arr!25412 (Array (_ BitVec 32) ValueCell!8732)) (size!25872 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!52902)

(declare-fun mapRest!29335 () (Array (_ BitVec 32) ValueCell!8732))

(declare-fun mapKey!29335 () (_ BitVec 32))

(declare-fun mapValue!29335 () ValueCell!8732)

(assert (=> mapNonEmpty!29335 (= (arr!25412 _values!1152) (store mapRest!29335 mapKey!29335 mapValue!29335))))

(declare-fun res!608896 () Bool)

(declare-fun e!505144 () Bool)

(assert (=> start!77398 (=> (not res!608896) (not e!505144))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77398 (= res!608896 (validMask!0 mask!1756))))

(assert (=> start!77398 e!505144))

(assert (=> start!77398 true))

(declare-fun e!505143 () Bool)

(declare-fun array_inv!19904 (array!52902) Bool)

(assert (=> start!77398 (and (array_inv!19904 _values!1152) e!505143)))

(declare-datatypes ((array!52904 0))(
  ( (array!52905 (arr!25413 (Array (_ BitVec 32) (_ BitVec 64))) (size!25873 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!52904)

(declare-fun array_inv!19905 (array!52904) Bool)

(assert (=> start!77398 (array_inv!19905 _keys!1386)))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun b!902028 () Bool)

(assert (=> b!902028 (= e!505144 (and (= (size!25872 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25873 _keys!1386) (size!25872 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011) (= (size!25873 _keys!1386) (bvadd #b00000000000000000000000000000001 mask!1756)) (bvsgt #b00000000000000000000000000000000 (size!25873 _keys!1386))))))

(declare-fun b!902029 () Bool)

(declare-fun e!505146 () Bool)

(assert (=> b!902029 (= e!505143 (and e!505146 mapRes!29335))))

(declare-fun condMapEmpty!29335 () Bool)

(declare-fun mapDefault!29335 () ValueCell!8732)

