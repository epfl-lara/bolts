; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82440 () Bool)

(assert start!82440)

(declare-fun b!960802 () Bool)

(declare-fun e!541655 () Bool)

(declare-fun e!541656 () Bool)

(declare-fun mapRes!34066 () Bool)

(assert (=> b!960802 (= e!541655 (and e!541656 mapRes!34066))))

(declare-fun condMapEmpty!34066 () Bool)

(declare-datatypes ((V!33505 0))(
  ( (V!33506 (val!10746 Int)) )
))
(declare-datatypes ((ValueCell!10214 0))(
  ( (ValueCellFull!10214 (v!13303 V!33505)) (EmptyCell!10214) )
))
(declare-datatypes ((array!58879 0))(
  ( (array!58880 (arr!28309 (Array (_ BitVec 32) ValueCell!10214)) (size!28789 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!58879)

(declare-fun mapDefault!34066 () ValueCell!10214)

