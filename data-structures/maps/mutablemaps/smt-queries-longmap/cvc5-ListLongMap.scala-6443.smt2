; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82526 () Bool)

(assert start!82526)

(declare-fun res!643498 () Bool)

(declare-fun e!542064 () Bool)

(assert (=> start!82526 (=> (not res!643498) (not e!542064))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82526 (= res!643498 (validMask!0 mask!2110))))

(assert (=> start!82526 e!542064))

(assert (=> start!82526 true))

(declare-datatypes ((V!33561 0))(
  ( (V!33562 (val!10767 Int)) )
))
(declare-datatypes ((ValueCell!10235 0))(
  ( (ValueCellFull!10235 (v!13325 V!33561)) (EmptyCell!10235) )
))
(declare-datatypes ((array!58963 0))(
  ( (array!58964 (arr!28346 (Array (_ BitVec 32) ValueCell!10235)) (size!28826 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!58963)

(declare-fun e!542067 () Bool)

(declare-fun array_inv!21893 (array!58963) Bool)

(assert (=> start!82526 (and (array_inv!21893 _values!1400) e!542067)))

(declare-datatypes ((array!58965 0))(
  ( (array!58966 (arr!28347 (Array (_ BitVec 32) (_ BitVec 64))) (size!28827 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!58965)

(declare-fun array_inv!21894 (array!58965) Bool)

(assert (=> start!82526 (array_inv!21894 _keys!1686)))

(declare-fun b!961310 () Bool)

(declare-fun e!542065 () Bool)

(declare-fun tp_is_empty!21433 () Bool)

(assert (=> b!961310 (= e!542065 tp_is_empty!21433)))

(declare-fun b!961311 () Bool)

(declare-fun res!643499 () Bool)

(assert (=> b!961311 (=> (not res!643499) (not e!542064))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58965 (_ BitVec 32)) Bool)

(assert (=> b!961311 (= res!643499 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!961312 () Bool)

(declare-fun e!542066 () Bool)

(assert (=> b!961312 (= e!542066 tp_is_empty!21433)))

(declare-fun b!961313 () Bool)

(declare-fun res!643497 () Bool)

(assert (=> b!961313 (=> (not res!643497) (not e!542064))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!961313 (= res!643497 (and (= (size!28826 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28827 _keys!1686) (size!28826 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!961314 () Bool)

(declare-fun mapRes!34144 () Bool)

(assert (=> b!961314 (= e!542067 (and e!542065 mapRes!34144))))

(declare-fun condMapEmpty!34144 () Bool)

(declare-fun mapDefault!34144 () ValueCell!10235)

