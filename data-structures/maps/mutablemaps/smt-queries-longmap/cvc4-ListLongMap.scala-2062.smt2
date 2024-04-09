; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35552 () Bool)

(assert start!35552)

(declare-fun b!355965 () Bool)

(declare-fun e!218164 () Bool)

(assert (=> b!355965 (= e!218164 false)))

(declare-fun lt!165871 () Bool)

(declare-datatypes ((array!19537 0))(
  ( (array!19538 (arr!9259 (Array (_ BitVec 32) (_ BitVec 64))) (size!9611 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19537)

(declare-datatypes ((List!5384 0))(
  ( (Nil!5381) (Cons!5380 (h!6236 (_ BitVec 64)) (t!10542 List!5384)) )
))
(declare-fun arrayNoDuplicates!0 (array!19537 (_ BitVec 32) List!5384) Bool)

(assert (=> b!355965 (= lt!165871 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5381))))

(declare-fun b!355966 () Bool)

(declare-fun e!218162 () Bool)

(declare-fun tp_is_empty!7997 () Bool)

(assert (=> b!355966 (= e!218162 tp_is_empty!7997)))

(declare-fun b!355967 () Bool)

(declare-fun res!197542 () Bool)

(assert (=> b!355967 (=> (not res!197542) (not e!218164))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((V!11639 0))(
  ( (V!11640 (val!4043 Int)) )
))
(declare-datatypes ((ValueCell!3655 0))(
  ( (ValueCellFull!3655 (v!6233 V!11639)) (EmptyCell!3655) )
))
(declare-datatypes ((array!19539 0))(
  ( (array!19540 (arr!9260 (Array (_ BitVec 32) ValueCell!3655)) (size!9612 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19539)

(assert (=> b!355967 (= res!197542 (and (= (size!9612 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9611 _keys!1456) (size!9612 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!13503 () Bool)

(declare-fun mapRes!13503 () Bool)

(declare-fun tp!27480 () Bool)

(declare-fun e!218161 () Bool)

(assert (=> mapNonEmpty!13503 (= mapRes!13503 (and tp!27480 e!218161))))

(declare-fun mapRest!13503 () (Array (_ BitVec 32) ValueCell!3655))

(declare-fun mapValue!13503 () ValueCell!3655)

(declare-fun mapKey!13503 () (_ BitVec 32))

(assert (=> mapNonEmpty!13503 (= (arr!9260 _values!1208) (store mapRest!13503 mapKey!13503 mapValue!13503))))

(declare-fun b!355968 () Bool)

(declare-fun res!197540 () Bool)

(assert (=> b!355968 (=> (not res!197540) (not e!218164))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19537 (_ BitVec 32)) Bool)

(assert (=> b!355968 (= res!197540 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!355969 () Bool)

(assert (=> b!355969 (= e!218161 tp_is_empty!7997)))

(declare-fun b!355970 () Bool)

(declare-fun e!218163 () Bool)

(assert (=> b!355970 (= e!218163 (and e!218162 mapRes!13503))))

(declare-fun condMapEmpty!13503 () Bool)

(declare-fun mapDefault!13503 () ValueCell!3655)

