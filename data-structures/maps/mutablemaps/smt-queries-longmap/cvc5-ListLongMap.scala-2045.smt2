; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35446 () Bool)

(assert start!35446)

(declare-fun b_free!7825 () Bool)

(declare-fun b_next!7825 () Bool)

(assert (=> start!35446 (= b_free!7825 (not b_next!7825))))

(declare-fun tp!27261 () Bool)

(declare-fun b_and!15085 () Bool)

(assert (=> start!35446 (= tp!27261 b_and!15085)))

(declare-fun b!354645 () Bool)

(declare-fun e!217367 () Bool)

(declare-fun tp_is_empty!7891 () Bool)

(assert (=> b!354645 (= e!217367 tp_is_empty!7891)))

(declare-fun b!354646 () Bool)

(declare-fun res!196704 () Bool)

(declare-fun e!217368 () Bool)

(assert (=> b!354646 (=> (not res!196704) (not e!217368))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-datatypes ((array!19329 0))(
  ( (array!19330 (arr!9155 (Array (_ BitVec 32) (_ BitVec 64))) (size!9507 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19329)

(declare-datatypes ((V!11499 0))(
  ( (V!11500 (val!3990 Int)) )
))
(declare-datatypes ((ValueCell!3602 0))(
  ( (ValueCellFull!3602 (v!6180 V!11499)) (EmptyCell!3602) )
))
(declare-datatypes ((array!19331 0))(
  ( (array!19332 (arr!9156 (Array (_ BitVec 32) ValueCell!3602)) (size!9508 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19331)

(declare-fun mask!1842 () (_ BitVec 32))

(assert (=> b!354646 (= res!196704 (and (= (size!9508 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9507 _keys!1456) (size!9508 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!354647 () Bool)

(declare-fun res!196705 () Bool)

(assert (=> b!354647 (=> (not res!196705) (not e!217368))))

(declare-fun from!1805 () (_ BitVec 32))

(assert (=> b!354647 (= res!196705 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9507 _keys!1456))))))

(declare-fun b!354648 () Bool)

(declare-fun res!196697 () Bool)

(assert (=> b!354648 (=> (not res!196697) (not e!217368))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19329 (_ BitVec 32)) Bool)

(assert (=> b!354648 (= res!196697 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!354649 () Bool)

(declare-fun e!217370 () Bool)

(assert (=> b!354649 (= e!217370 tp_is_empty!7891)))

(declare-fun mapIsEmpty!13344 () Bool)

(declare-fun mapRes!13344 () Bool)

(assert (=> mapIsEmpty!13344 mapRes!13344))

(declare-fun b!354650 () Bool)

(declare-fun res!196699 () Bool)

(assert (=> b!354650 (=> (not res!196699) (not e!217368))))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!354650 (= res!196699 (validKeyInArray!0 k!1077))))

(declare-fun b!354651 () Bool)

(declare-fun e!217366 () Bool)

(assert (=> b!354651 (= e!217366 (and e!217370 mapRes!13344))))

(declare-fun condMapEmpty!13344 () Bool)

(declare-fun mapDefault!13344 () ValueCell!3602)

