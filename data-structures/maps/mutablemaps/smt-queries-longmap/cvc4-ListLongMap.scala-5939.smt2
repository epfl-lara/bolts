; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77482 () Bool)

(assert start!77482)

(declare-fun mapNonEmpty!29410 () Bool)

(declare-fun mapRes!29410 () Bool)

(declare-fun tp!56470 () Bool)

(declare-fun e!505541 () Bool)

(assert (=> mapNonEmpty!29410 (= mapRes!29410 (and tp!56470 e!505541))))

(declare-datatypes ((V!29587 0))(
  ( (V!29588 (val!9284 Int)) )
))
(declare-datatypes ((ValueCell!8752 0))(
  ( (ValueCellFull!8752 (v!11789 V!29587)) (EmptyCell!8752) )
))
(declare-datatypes ((array!52986 0))(
  ( (array!52987 (arr!25449 (Array (_ BitVec 32) ValueCell!8752)) (size!25909 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!52986)

(declare-fun mapValue!29410 () ValueCell!8752)

(declare-fun mapRest!29410 () (Array (_ BitVec 32) ValueCell!8752))

(declare-fun mapKey!29410 () (_ BitVec 32))

(assert (=> mapNonEmpty!29410 (= (arr!25449 _values!1152) (store mapRest!29410 mapKey!29410 mapValue!29410))))

(declare-fun b!902518 () Bool)

(declare-fun res!609143 () Bool)

(declare-fun e!505538 () Bool)

(assert (=> b!902518 (=> (not res!609143) (not e!505538))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!52988 0))(
  ( (array!52989 (arr!25450 (Array (_ BitVec 32) (_ BitVec 64))) (size!25910 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!52988)

(assert (=> b!902518 (= res!609143 (and (= (size!25909 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25910 _keys!1386) (size!25909 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!902519 () Bool)

(assert (=> b!902519 (= e!505538 false)))

(declare-fun lt!407840 () Bool)

(declare-datatypes ((List!17969 0))(
  ( (Nil!17966) (Cons!17965 (h!19111 (_ BitVec 64)) (t!25360 List!17969)) )
))
(declare-fun arrayNoDuplicates!0 (array!52988 (_ BitVec 32) List!17969) Bool)

(assert (=> b!902519 (= lt!407840 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!17966))))

(declare-fun b!902520 () Bool)

(declare-fun e!505539 () Bool)

(declare-fun tp_is_empty!18467 () Bool)

(assert (=> b!902520 (= e!505539 tp_is_empty!18467)))

(declare-fun b!902522 () Bool)

(declare-fun e!505537 () Bool)

(assert (=> b!902522 (= e!505537 (and e!505539 mapRes!29410))))

(declare-fun condMapEmpty!29410 () Bool)

(declare-fun mapDefault!29410 () ValueCell!8752)

