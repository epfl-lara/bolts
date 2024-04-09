; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82536 () Bool)

(assert start!82536)

(declare-fun res!643544 () Bool)

(declare-fun e!542140 () Bool)

(assert (=> start!82536 (=> (not res!643544) (not e!542140))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82536 (= res!643544 (validMask!0 mask!2110))))

(assert (=> start!82536 e!542140))

(assert (=> start!82536 true))

(declare-datatypes ((V!33573 0))(
  ( (V!33574 (val!10772 Int)) )
))
(declare-datatypes ((ValueCell!10240 0))(
  ( (ValueCellFull!10240 (v!13330 V!33573)) (EmptyCell!10240) )
))
(declare-datatypes ((array!58981 0))(
  ( (array!58982 (arr!28355 (Array (_ BitVec 32) ValueCell!10240)) (size!28835 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!58981)

(declare-fun e!542142 () Bool)

(declare-fun array_inv!21899 (array!58981) Bool)

(assert (=> start!82536 (and (array_inv!21899 _values!1400) e!542142)))

(declare-datatypes ((array!58983 0))(
  ( (array!58984 (arr!28356 (Array (_ BitVec 32) (_ BitVec 64))) (size!28836 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!58983)

(declare-fun array_inv!21900 (array!58983) Bool)

(assert (=> start!82536 (array_inv!21900 _keys!1686)))

(declare-fun b!961400 () Bool)

(assert (=> b!961400 (= e!542140 false)))

(declare-fun lt!430719 () Bool)

(declare-datatypes ((List!19813 0))(
  ( (Nil!19810) (Cons!19809 (h!20971 (_ BitVec 64)) (t!28184 List!19813)) )
))
(declare-fun arrayNoDuplicates!0 (array!58983 (_ BitVec 32) List!19813) Bool)

(assert (=> b!961400 (= lt!430719 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19810))))

(declare-fun b!961401 () Bool)

(declare-fun e!542141 () Bool)

(declare-fun tp_is_empty!21443 () Bool)

(assert (=> b!961401 (= e!542141 tp_is_empty!21443)))

(declare-fun b!961402 () Bool)

(declare-fun e!542143 () Bool)

(assert (=> b!961402 (= e!542143 tp_is_empty!21443)))

(declare-fun mapIsEmpty!34159 () Bool)

(declare-fun mapRes!34159 () Bool)

(assert (=> mapIsEmpty!34159 mapRes!34159))

(declare-fun b!961403 () Bool)

(declare-fun res!643543 () Bool)

(assert (=> b!961403 (=> (not res!643543) (not e!542140))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!961403 (= res!643543 (and (= (size!28835 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28836 _keys!1686) (size!28835 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!961404 () Bool)

(assert (=> b!961404 (= e!542142 (and e!542143 mapRes!34159))))

(declare-fun condMapEmpty!34159 () Bool)

(declare-fun mapDefault!34159 () ValueCell!10240)

