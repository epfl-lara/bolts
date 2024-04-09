; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35422 () Bool)

(assert start!35422)

(declare-fun b!354309 () Bool)

(declare-fun e!217186 () Bool)

(declare-fun tp_is_empty!7867 () Bool)

(assert (=> b!354309 (= e!217186 tp_is_empty!7867)))

(declare-fun res!196471 () Bool)

(declare-fun e!217189 () Bool)

(assert (=> start!35422 (=> (not res!196471) (not e!217189))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35422 (= res!196471 (validMask!0 mask!1842))))

(assert (=> start!35422 e!217189))

(assert (=> start!35422 true))

(declare-datatypes ((V!11467 0))(
  ( (V!11468 (val!3978 Int)) )
))
(declare-datatypes ((ValueCell!3590 0))(
  ( (ValueCellFull!3590 (v!6168 V!11467)) (EmptyCell!3590) )
))
(declare-datatypes ((array!19287 0))(
  ( (array!19288 (arr!9134 (Array (_ BitVec 32) ValueCell!3590)) (size!9486 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19287)

(declare-fun e!217187 () Bool)

(declare-fun array_inv!6724 (array!19287) Bool)

(assert (=> start!35422 (and (array_inv!6724 _values!1208) e!217187)))

(declare-datatypes ((array!19289 0))(
  ( (array!19290 (arr!9135 (Array (_ BitVec 32) (_ BitVec 64))) (size!9487 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19289)

(declare-fun array_inv!6725 (array!19289) Bool)

(assert (=> start!35422 (array_inv!6725 _keys!1456)))

(declare-fun b!354310 () Bool)

(declare-fun res!196470 () Bool)

(assert (=> b!354310 (=> (not res!196470) (not e!217189))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19289 (_ BitVec 32)) Bool)

(assert (=> b!354310 (= res!196470 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun mapIsEmpty!13308 () Bool)

(declare-fun mapRes!13308 () Bool)

(assert (=> mapIsEmpty!13308 mapRes!13308))

(declare-fun b!354311 () Bool)

(declare-fun res!196469 () Bool)

(assert (=> b!354311 (=> (not res!196469) (not e!217189))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!354311 (= res!196469 (and (= (size!9486 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9487 _keys!1456) (size!9486 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!354312 () Bool)

(declare-fun e!217188 () Bool)

(assert (=> b!354312 (= e!217188 tp_is_empty!7867)))

(declare-fun b!354313 () Bool)

(assert (=> b!354313 (= e!217187 (and e!217188 mapRes!13308))))

(declare-fun condMapEmpty!13308 () Bool)

(declare-fun mapDefault!13308 () ValueCell!3590)

