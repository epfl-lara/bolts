; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3794 () Bool)

(assert start!3794)

(declare-fun b!26587 () Bool)

(declare-fun e!17339 () Bool)

(declare-fun tp_is_empty!1117 () Bool)

(assert (=> b!26587 (= e!17339 tp_is_empty!1117)))

(declare-fun mapNonEmpty!1192 () Bool)

(declare-fun mapRes!1192 () Bool)

(declare-fun tp!3712 () Bool)

(assert (=> mapNonEmpty!1192 (= mapRes!1192 (and tp!3712 e!17339))))

(declare-datatypes ((V!1315 0))(
  ( (V!1316 (val!585 Int)) )
))
(declare-datatypes ((ValueCell!359 0))(
  ( (ValueCellFull!359 (v!1671 V!1315)) (EmptyCell!359) )
))
(declare-datatypes ((array!1465 0))(
  ( (array!1466 (arr!690 (Array (_ BitVec 32) ValueCell!359)) (size!791 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1465)

(declare-fun mapRest!1192 () (Array (_ BitVec 32) ValueCell!359))

(declare-fun mapKey!1192 () (_ BitVec 32))

(declare-fun mapValue!1192 () ValueCell!359)

(assert (=> mapNonEmpty!1192 (= (arr!690 _values!1501) (store mapRest!1192 mapKey!1192 mapValue!1192))))

(declare-fun res!15757 () Bool)

(declare-fun e!17341 () Bool)

(assert (=> start!3794 (=> (not res!15757) (not e!17341))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3794 (= res!15757 (validMask!0 mask!2294))))

(assert (=> start!3794 e!17341))

(assert (=> start!3794 true))

(declare-fun e!17340 () Bool)

(declare-fun array_inv!475 (array!1465) Bool)

(assert (=> start!3794 (and (array_inv!475 _values!1501) e!17340)))

(declare-datatypes ((array!1467 0))(
  ( (array!1468 (arr!691 (Array (_ BitVec 32) (_ BitVec 64))) (size!792 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1467)

(declare-fun array_inv!476 (array!1467) Bool)

(assert (=> start!3794 (array_inv!476 _keys!1833)))

(declare-fun b!26588 () Bool)

(assert (=> b!26588 (= e!17341 false)))

(declare-fun lt!10395 () Bool)

(declare-datatypes ((List!593 0))(
  ( (Nil!590) (Cons!589 (h!1156 (_ BitVec 64)) (t!3282 List!593)) )
))
(declare-fun arrayNoDuplicates!0 (array!1467 (_ BitVec 32) List!593) Bool)

(assert (=> b!26588 (= lt!10395 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!590))))

(declare-fun b!26589 () Bool)

(declare-fun e!17337 () Bool)

(assert (=> b!26589 (= e!17340 (and e!17337 mapRes!1192))))

(declare-fun condMapEmpty!1192 () Bool)

(declare-fun mapDefault!1192 () ValueCell!359)

