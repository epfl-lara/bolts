; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82186 () Bool)

(assert start!82186)

(declare-fun b!957431 () Bool)

(declare-fun res!641014 () Bool)

(declare-fun e!539750 () Bool)

(assert (=> b!957431 (=> (not res!641014) (not e!539750))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58393 0))(
  ( (array!58394 (arr!28066 (Array (_ BitVec 32) (_ BitVec 64))) (size!28546 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58393)

(declare-datatypes ((V!33165 0))(
  ( (V!33166 (val!10619 Int)) )
))
(declare-datatypes ((ValueCell!10087 0))(
  ( (ValueCellFull!10087 (v!13176 V!33165)) (EmptyCell!10087) )
))
(declare-datatypes ((array!58395 0))(
  ( (array!58396 (arr!28067 (Array (_ BitVec 32) ValueCell!10087)) (size!28547 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58395)

(assert (=> b!957431 (= res!641014 (and (= (size!28547 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28546 _keys!1668) (size!28547 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!957432 () Bool)

(declare-fun e!539752 () Bool)

(declare-fun e!539749 () Bool)

(declare-fun mapRes!33685 () Bool)

(assert (=> b!957432 (= e!539752 (and e!539749 mapRes!33685))))

(declare-fun condMapEmpty!33685 () Bool)

(declare-fun mapDefault!33685 () ValueCell!10087)

