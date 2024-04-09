; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35516 () Bool)

(assert start!35516)

(declare-fun b!355641 () Bool)

(declare-fun res!197380 () Bool)

(declare-fun e!217894 () Bool)

(assert (=> b!355641 (=> (not res!197380) (not e!217894))))

(declare-datatypes ((array!19467 0))(
  ( (array!19468 (arr!9224 (Array (_ BitVec 32) (_ BitVec 64))) (size!9576 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19467)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19467 (_ BitVec 32)) Bool)

(assert (=> b!355641 (= res!197380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!355642 () Bool)

(declare-fun res!197378 () Bool)

(assert (=> b!355642 (=> (not res!197378) (not e!217894))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-datatypes ((V!11591 0))(
  ( (V!11592 (val!4025 Int)) )
))
(declare-datatypes ((ValueCell!3637 0))(
  ( (ValueCellFull!3637 (v!6215 V!11591)) (EmptyCell!3637) )
))
(declare-datatypes ((array!19469 0))(
  ( (array!19470 (arr!9225 (Array (_ BitVec 32) ValueCell!3637)) (size!9577 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19469)

(assert (=> b!355642 (= res!197378 (and (= (size!9577 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9576 _keys!1456) (size!9577 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!13449 () Bool)

(declare-fun mapRes!13449 () Bool)

(declare-fun tp!27426 () Bool)

(declare-fun e!217891 () Bool)

(assert (=> mapNonEmpty!13449 (= mapRes!13449 (and tp!27426 e!217891))))

(declare-fun mapRest!13449 () (Array (_ BitVec 32) ValueCell!3637))

(declare-fun mapValue!13449 () ValueCell!3637)

(declare-fun mapKey!13449 () (_ BitVec 32))

(assert (=> mapNonEmpty!13449 (= (arr!9225 _values!1208) (store mapRest!13449 mapKey!13449 mapValue!13449))))

(declare-fun b!355643 () Bool)

(declare-fun tp_is_empty!7961 () Bool)

(assert (=> b!355643 (= e!217891 tp_is_empty!7961)))

(declare-fun b!355644 () Bool)

(declare-fun e!217895 () Bool)

(assert (=> b!355644 (= e!217895 tp_is_empty!7961)))

(declare-fun b!355645 () Bool)

(declare-fun e!217893 () Bool)

(assert (=> b!355645 (= e!217893 (and e!217895 mapRes!13449))))

(declare-fun condMapEmpty!13449 () Bool)

(declare-fun mapDefault!13449 () ValueCell!3637)

