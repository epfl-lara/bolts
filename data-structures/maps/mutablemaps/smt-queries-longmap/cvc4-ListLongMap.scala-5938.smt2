; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77476 () Bool)

(assert start!77476)

(declare-fun b!902464 () Bool)

(declare-fun e!505492 () Bool)

(assert (=> b!902464 (= e!505492 false)))

(declare-fun lt!407831 () Bool)

(declare-datatypes ((array!52974 0))(
  ( (array!52975 (arr!25443 (Array (_ BitVec 32) (_ BitVec 64))) (size!25903 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!52974)

(declare-datatypes ((List!17966 0))(
  ( (Nil!17963) (Cons!17962 (h!19108 (_ BitVec 64)) (t!25357 List!17966)) )
))
(declare-fun arrayNoDuplicates!0 (array!52974 (_ BitVec 32) List!17966) Bool)

(assert (=> b!902464 (= lt!407831 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!17963))))

(declare-fun b!902465 () Bool)

(declare-fun e!505495 () Bool)

(declare-fun tp_is_empty!18461 () Bool)

(assert (=> b!902465 (= e!505495 tp_is_empty!18461)))

(declare-fun mapNonEmpty!29401 () Bool)

(declare-fun mapRes!29401 () Bool)

(declare-fun tp!56461 () Bool)

(assert (=> mapNonEmpty!29401 (= mapRes!29401 (and tp!56461 e!505495))))

(declare-fun mapKey!29401 () (_ BitVec 32))

(declare-datatypes ((V!29579 0))(
  ( (V!29580 (val!9281 Int)) )
))
(declare-datatypes ((ValueCell!8749 0))(
  ( (ValueCellFull!8749 (v!11786 V!29579)) (EmptyCell!8749) )
))
(declare-fun mapValue!29401 () ValueCell!8749)

(declare-datatypes ((array!52976 0))(
  ( (array!52977 (arr!25444 (Array (_ BitVec 32) ValueCell!8749)) (size!25904 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!52976)

(declare-fun mapRest!29401 () (Array (_ BitVec 32) ValueCell!8749))

(assert (=> mapNonEmpty!29401 (= (arr!25444 _values!1152) (store mapRest!29401 mapKey!29401 mapValue!29401))))

(declare-fun b!902466 () Bool)

(declare-fun res!609115 () Bool)

(assert (=> b!902466 (=> (not res!609115) (not e!505492))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52974 (_ BitVec 32)) Bool)

(assert (=> b!902466 (= res!609115 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!902467 () Bool)

(declare-fun e!505496 () Bool)

(declare-fun e!505493 () Bool)

(assert (=> b!902467 (= e!505496 (and e!505493 mapRes!29401))))

(declare-fun condMapEmpty!29401 () Bool)

(declare-fun mapDefault!29401 () ValueCell!8749)

