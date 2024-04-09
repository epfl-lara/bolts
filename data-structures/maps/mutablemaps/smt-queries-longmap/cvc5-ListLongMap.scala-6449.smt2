; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82562 () Bool)

(assert start!82562)

(declare-fun b!961640 () Bool)

(declare-fun res!643668 () Bool)

(declare-fun e!542336 () Bool)

(assert (=> b!961640 (=> (not res!643668) (not e!542336))))

(declare-datatypes ((array!59025 0))(
  ( (array!59026 (arr!28377 (Array (_ BitVec 32) (_ BitVec 64))) (size!28857 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59025)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59025 (_ BitVec 32)) Bool)

(assert (=> b!961640 (= res!643668 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!961641 () Bool)

(declare-fun res!643667 () Bool)

(assert (=> b!961641 (=> (not res!643667) (not e!542336))))

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!961641 (= res!643667 (validKeyInArray!0 (select (arr!28377 _keys!1686) i!803)))))

(declare-fun b!961642 () Bool)

(declare-fun e!542334 () Bool)

(declare-fun tp_is_empty!21469 () Bool)

(assert (=> b!961642 (= e!542334 tp_is_empty!21469)))

(declare-fun mapNonEmpty!34198 () Bool)

(declare-fun mapRes!34198 () Bool)

(declare-fun tp!65128 () Bool)

(declare-fun e!542335 () Bool)

(assert (=> mapNonEmpty!34198 (= mapRes!34198 (and tp!65128 e!542335))))

(declare-datatypes ((V!33609 0))(
  ( (V!33610 (val!10785 Int)) )
))
(declare-datatypes ((ValueCell!10253 0))(
  ( (ValueCellFull!10253 (v!13343 V!33609)) (EmptyCell!10253) )
))
(declare-fun mapRest!34198 () (Array (_ BitVec 32) ValueCell!10253))

(declare-fun mapValue!34198 () ValueCell!10253)

(declare-datatypes ((array!59027 0))(
  ( (array!59028 (arr!28378 (Array (_ BitVec 32) ValueCell!10253)) (size!28858 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59027)

(declare-fun mapKey!34198 () (_ BitVec 32))

(assert (=> mapNonEmpty!34198 (= (arr!28378 _values!1400) (store mapRest!34198 mapKey!34198 mapValue!34198))))

(declare-fun b!961643 () Bool)

(declare-fun res!643670 () Bool)

(assert (=> b!961643 (=> (not res!643670) (not e!542336))))

(declare-datatypes ((List!19822 0))(
  ( (Nil!19819) (Cons!19818 (h!20980 (_ BitVec 64)) (t!28193 List!19822)) )
))
(declare-fun arrayNoDuplicates!0 (array!59025 (_ BitVec 32) List!19822) Bool)

(assert (=> b!961643 (= res!643670 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19819))))

(declare-fun b!961644 () Bool)

(declare-fun res!643666 () Bool)

(assert (=> b!961644 (=> (not res!643666) (not e!542336))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!961644 (= res!643666 (and (= (size!28858 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28857 _keys!1686) (size!28858 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!961645 () Bool)

(declare-fun from!2084 () (_ BitVec 32))

(assert (=> b!961645 (= e!542336 (bvsgt from!2084 (size!28857 _keys!1686)))))

(declare-fun b!961647 () Bool)

(declare-fun e!542337 () Bool)

(assert (=> b!961647 (= e!542337 (and e!542334 mapRes!34198))))

(declare-fun condMapEmpty!34198 () Bool)

(declare-fun mapDefault!34198 () ValueCell!10253)

