; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131914 () Bool)

(assert start!131914)

(declare-fun b!1543766 () Bool)

(declare-fun e!859297 () Bool)

(declare-fun tp_is_empty!37871 () Bool)

(assert (=> b!1543766 (= e!859297 tp_is_empty!37871)))

(declare-fun b!1543767 () Bool)

(declare-fun res!1059233 () Bool)

(declare-fun e!859295 () Bool)

(assert (=> b!1543767 (=> (not res!1059233) (not e!859295))))

(declare-datatypes ((array!102917 0))(
  ( (array!102918 (arr!49656 (Array (_ BitVec 32) (_ BitVec 64))) (size!50207 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102917)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102917 (_ BitVec 32)) Bool)

(assert (=> b!1543767 (= res!1059233 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1543768 () Bool)

(declare-fun res!1059232 () Bool)

(assert (=> b!1543768 (=> (not res!1059232) (not e!859295))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-datatypes ((V!58937 0))(
  ( (V!58938 (val!19013 Int)) )
))
(declare-datatypes ((ValueCell!18025 0))(
  ( (ValueCellFull!18025 (v!21811 V!58937)) (EmptyCell!18025) )
))
(declare-datatypes ((array!102919 0))(
  ( (array!102920 (arr!49657 (Array (_ BitVec 32) ValueCell!18025)) (size!50208 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102919)

(assert (=> b!1543768 (= res!1059232 (and (= (size!50208 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50207 _keys!618) (size!50208 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1543769 () Bool)

(declare-fun e!859293 () Bool)

(declare-fun e!859296 () Bool)

(declare-fun mapRes!58510 () Bool)

(assert (=> b!1543769 (= e!859293 (and e!859296 mapRes!58510))))

(declare-fun condMapEmpty!58510 () Bool)

(declare-fun mapDefault!58510 () ValueCell!18025)

