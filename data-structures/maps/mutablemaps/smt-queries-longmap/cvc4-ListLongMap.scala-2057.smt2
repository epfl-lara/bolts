; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35522 () Bool)

(assert start!35522)

(declare-fun res!197406 () Bool)

(declare-fun e!217940 () Bool)

(assert (=> start!35522 (=> (not res!197406) (not e!217940))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35522 (= res!197406 (validMask!0 mask!1842))))

(assert (=> start!35522 e!217940))

(assert (=> start!35522 true))

(declare-datatypes ((V!11599 0))(
  ( (V!11600 (val!4028 Int)) )
))
(declare-datatypes ((ValueCell!3640 0))(
  ( (ValueCellFull!3640 (v!6218 V!11599)) (EmptyCell!3640) )
))
(declare-datatypes ((array!19479 0))(
  ( (array!19480 (arr!9230 (Array (_ BitVec 32) ValueCell!3640)) (size!9582 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19479)

(declare-fun e!217937 () Bool)

(declare-fun array_inv!6796 (array!19479) Bool)

(assert (=> start!35522 (and (array_inv!6796 _values!1208) e!217937)))

(declare-datatypes ((array!19481 0))(
  ( (array!19482 (arr!9231 (Array (_ BitVec 32) (_ BitVec 64))) (size!9583 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19481)

(declare-fun array_inv!6797 (array!19481) Bool)

(assert (=> start!35522 (array_inv!6797 _keys!1456)))

(declare-fun b!355695 () Bool)

(declare-fun e!217936 () Bool)

(declare-fun tp_is_empty!7967 () Bool)

(assert (=> b!355695 (= e!217936 tp_is_empty!7967)))

(declare-fun b!355696 () Bool)

(assert (=> b!355696 (= e!217940 false)))

(declare-fun lt!165826 () Bool)

(declare-datatypes ((List!5371 0))(
  ( (Nil!5368) (Cons!5367 (h!6223 (_ BitVec 64)) (t!10529 List!5371)) )
))
(declare-fun arrayNoDuplicates!0 (array!19481 (_ BitVec 32) List!5371) Bool)

(assert (=> b!355696 (= lt!165826 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5368))))

(declare-fun b!355697 () Bool)

(declare-fun e!217939 () Bool)

(assert (=> b!355697 (= e!217939 tp_is_empty!7967)))

(declare-fun b!355698 () Bool)

(declare-fun res!197407 () Bool)

(assert (=> b!355698 (=> (not res!197407) (not e!217940))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19481 (_ BitVec 32)) Bool)

(assert (=> b!355698 (= res!197407 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun mapIsEmpty!13458 () Bool)

(declare-fun mapRes!13458 () Bool)

(assert (=> mapIsEmpty!13458 mapRes!13458))

(declare-fun b!355699 () Bool)

(declare-fun res!197405 () Bool)

(assert (=> b!355699 (=> (not res!197405) (not e!217940))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!355699 (= res!197405 (and (= (size!9582 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9583 _keys!1456) (size!9582 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!355700 () Bool)

(assert (=> b!355700 (= e!217937 (and e!217936 mapRes!13458))))

(declare-fun condMapEmpty!13458 () Bool)

(declare-fun mapDefault!13458 () ValueCell!3640)

