; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82514 () Bool)

(assert start!82514)

(declare-fun b!961202 () Bool)

(declare-fun e!541977 () Bool)

(assert (=> b!961202 (= e!541977 false)))

(declare-fun lt!430686 () Bool)

(declare-datatypes ((array!58941 0))(
  ( (array!58942 (arr!28335 (Array (_ BitVec 32) (_ BitVec 64))) (size!28815 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!58941)

(declare-datatypes ((List!19806 0))(
  ( (Nil!19803) (Cons!19802 (h!20964 (_ BitVec 64)) (t!28177 List!19806)) )
))
(declare-fun arrayNoDuplicates!0 (array!58941 (_ BitVec 32) List!19806) Bool)

(assert (=> b!961202 (= lt!430686 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19803))))

(declare-fun b!961203 () Bool)

(declare-fun e!541978 () Bool)

(declare-fun e!541976 () Bool)

(declare-fun mapRes!34126 () Bool)

(assert (=> b!961203 (= e!541978 (and e!541976 mapRes!34126))))

(declare-fun condMapEmpty!34126 () Bool)

(declare-datatypes ((V!33545 0))(
  ( (V!33546 (val!10761 Int)) )
))
(declare-datatypes ((ValueCell!10229 0))(
  ( (ValueCellFull!10229 (v!13319 V!33545)) (EmptyCell!10229) )
))
(declare-datatypes ((array!58943 0))(
  ( (array!58944 (arr!28336 (Array (_ BitVec 32) ValueCell!10229)) (size!28816 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!58943)

(declare-fun mapDefault!34126 () ValueCell!10229)

