; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3804 () Bool)

(assert start!3804)

(declare-fun mapNonEmpty!1207 () Bool)

(declare-fun mapRes!1207 () Bool)

(declare-fun tp!3727 () Bool)

(declare-fun e!17412 () Bool)

(assert (=> mapNonEmpty!1207 (= mapRes!1207 (and tp!3727 e!17412))))

(declare-datatypes ((V!1327 0))(
  ( (V!1328 (val!590 Int)) )
))
(declare-datatypes ((ValueCell!364 0))(
  ( (ValueCellFull!364 (v!1676 V!1327)) (EmptyCell!364) )
))
(declare-datatypes ((array!1483 0))(
  ( (array!1484 (arr!699 (Array (_ BitVec 32) ValueCell!364)) (size!800 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1483)

(declare-fun mapValue!1207 () ValueCell!364)

(declare-fun mapKey!1207 () (_ BitVec 32))

(declare-fun mapRest!1207 () (Array (_ BitVec 32) ValueCell!364))

(assert (=> mapNonEmpty!1207 (= (arr!699 _values!1501) (store mapRest!1207 mapKey!1207 mapValue!1207))))

(declare-fun b!26693 () Bool)

(declare-fun res!15816 () Bool)

(declare-fun e!17415 () Bool)

(assert (=> b!26693 (=> (not res!15816) (not e!17415))))

(declare-datatypes ((array!1485 0))(
  ( (array!1486 (arr!700 (Array (_ BitVec 32) (_ BitVec 64))) (size!801 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1485)

(declare-datatypes ((List!597 0))(
  ( (Nil!594) (Cons!593 (h!1160 (_ BitVec 64)) (t!3286 List!597)) )
))
(declare-fun arrayNoDuplicates!0 (array!1485 (_ BitVec 32) List!597) Bool)

(assert (=> b!26693 (= res!15816 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!594))))

(declare-fun b!26695 () Bool)

(assert (=> b!26695 (= e!17415 (bvsgt #b00000000000000000000000000000000 (size!801 _keys!1833)))))

(declare-fun b!26696 () Bool)

(declare-fun res!15817 () Bool)

(assert (=> b!26696 (=> (not res!15817) (not e!17415))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!26696 (= res!15817 (validKeyInArray!0 k!1304))))

(declare-fun b!26697 () Bool)

(declare-fun e!17414 () Bool)

(declare-fun e!17416 () Bool)

(assert (=> b!26697 (= e!17414 (and e!17416 mapRes!1207))))

(declare-fun condMapEmpty!1207 () Bool)

(declare-fun mapDefault!1207 () ValueCell!364)

