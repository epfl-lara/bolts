; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82410 () Bool)

(assert start!82410)

(declare-fun b_free!18649 () Bool)

(declare-fun b_next!18649 () Bool)

(assert (=> start!82410 (= b_free!18649 (not b_next!18649))))

(declare-fun tp!64917 () Bool)

(declare-fun b_and!30155 () Bool)

(assert (=> start!82410 (= tp!64917 b_and!30155)))

(declare-fun b!960434 () Bool)

(declare-fun res!643013 () Bool)

(declare-fun e!541430 () Bool)

(assert (=> b!960434 (=> (not res!643013) (not e!541430))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-datatypes ((array!58823 0))(
  ( (array!58824 (arr!28281 (Array (_ BitVec 32) (_ BitVec 64))) (size!28761 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58823)

(declare-datatypes ((V!33465 0))(
  ( (V!33466 (val!10731 Int)) )
))
(declare-datatypes ((ValueCell!10199 0))(
  ( (ValueCellFull!10199 (v!13288 V!33465)) (EmptyCell!10199) )
))
(declare-datatypes ((array!58825 0))(
  ( (array!58826 (arr!28282 (Array (_ BitVec 32) ValueCell!10199)) (size!28762 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58825)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!960434 (= res!643013 (and (= (size!28762 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28761 _keys!1668) (size!28762 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!960435 () Bool)

(declare-fun res!643012 () Bool)

(assert (=> b!960435 (=> (not res!643012) (not e!541430))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58823 (_ BitVec 32)) Bool)

(assert (=> b!960435 (= res!643012 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!960436 () Bool)

(declare-fun e!541429 () Bool)

(declare-fun tp_is_empty!21361 () Bool)

(assert (=> b!960436 (= e!541429 tp_is_empty!21361)))

(declare-fun b!960437 () Bool)

(declare-fun e!541432 () Bool)

(declare-fun mapRes!34021 () Bool)

(assert (=> b!960437 (= e!541432 (and e!541429 mapRes!34021))))

(declare-fun condMapEmpty!34021 () Bool)

(declare-fun mapDefault!34021 () ValueCell!10199)

