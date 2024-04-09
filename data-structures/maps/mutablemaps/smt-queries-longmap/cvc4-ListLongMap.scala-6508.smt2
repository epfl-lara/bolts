; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82920 () Bool)

(assert start!82920)

(declare-fun b_free!19019 () Bool)

(declare-fun b_next!19019 () Bool)

(assert (=> start!82920 (= b_free!19019 (not b_next!19019))))

(declare-fun tp!66186 () Bool)

(declare-fun b_and!30525 () Bool)

(assert (=> start!82920 (= tp!66186 b_and!30525)))

(declare-fun b!967002 () Bool)

(declare-fun e!545101 () Bool)

(declare-fun tp_is_empty!21827 () Bool)

(assert (=> b!967002 (= e!545101 tp_is_empty!21827)))

(declare-fun res!647421 () Bool)

(declare-fun e!545104 () Bool)

(assert (=> start!82920 (=> (not res!647421) (not e!545104))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82920 (= res!647421 (validMask!0 mask!2110))))

(assert (=> start!82920 e!545104))

(assert (=> start!82920 true))

(declare-datatypes ((V!34085 0))(
  ( (V!34086 (val!10964 Int)) )
))
(declare-datatypes ((ValueCell!10432 0))(
  ( (ValueCellFull!10432 (v!13522 V!34085)) (EmptyCell!10432) )
))
(declare-datatypes ((array!59713 0))(
  ( (array!59714 (arr!28721 (Array (_ BitVec 32) ValueCell!10432)) (size!29201 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59713)

(declare-fun e!545102 () Bool)

(declare-fun array_inv!22135 (array!59713) Bool)

(assert (=> start!82920 (and (array_inv!22135 _values!1400) e!545102)))

(declare-datatypes ((array!59715 0))(
  ( (array!59716 (arr!28722 (Array (_ BitVec 32) (_ BitVec 64))) (size!29202 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59715)

(declare-fun array_inv!22136 (array!59715) Bool)

(assert (=> start!82920 (array_inv!22136 _keys!1686)))

(assert (=> start!82920 tp!66186))

(assert (=> start!82920 tp_is_empty!21827))

(declare-fun mapIsEmpty!34735 () Bool)

(declare-fun mapRes!34735 () Bool)

(assert (=> mapIsEmpty!34735 mapRes!34735))

(declare-fun b!967003 () Bool)

(declare-fun res!647423 () Bool)

(assert (=> b!967003 (=> (not res!647423) (not e!545104))))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!967003 (= res!647423 (bvsgt from!2084 newFrom!159))))

(declare-fun b!967004 () Bool)

(declare-fun res!647418 () Bool)

(assert (=> b!967004 (=> (not res!647418) (not e!545104))))

(declare-datatypes ((List!20065 0))(
  ( (Nil!20062) (Cons!20061 (h!21223 (_ BitVec 64)) (t!28436 List!20065)) )
))
(declare-fun arrayNoDuplicates!0 (array!59715 (_ BitVec 32) List!20065) Bool)

(assert (=> b!967004 (= res!647418 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20062))))

(declare-fun b!967005 () Bool)

(declare-fun e!545103 () Bool)

(assert (=> b!967005 (= e!545103 tp_is_empty!21827)))

(declare-fun b!967006 () Bool)

(assert (=> b!967006 (= e!545104 (not true))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun minValue!1342 () V!34085)

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!34085)

(declare-datatypes ((tuple2!14190 0))(
  ( (tuple2!14191 (_1!7105 (_ BitVec 64)) (_2!7105 V!34085)) )
))
(declare-datatypes ((List!20066 0))(
  ( (Nil!20063) (Cons!20062 (h!21224 tuple2!14190) (t!28437 List!20066)) )
))
(declare-datatypes ((ListLongMap!12901 0))(
  ( (ListLongMap!12902 (toList!6466 List!20066)) )
))
(declare-fun contains!5517 (ListLongMap!12901 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3651 (array!59715 array!59713 (_ BitVec 32) (_ BitVec 32) V!34085 V!34085 (_ BitVec 32) Int) ListLongMap!12901)

(assert (=> b!967006 (contains!5517 (getCurrentListMap!3651 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28722 _keys!1686) i!803))))

(declare-datatypes ((Unit!32285 0))(
  ( (Unit!32286) )
))
(declare-fun lt!431340 () Unit!32285)

(declare-fun lemmaInListMapFromThenInFromMinusOne!49 (array!59715 array!59713 (_ BitVec 32) (_ BitVec 32) V!34085 V!34085 (_ BitVec 32) (_ BitVec 32) Int) Unit!32285)

(assert (=> b!967006 (= lt!431340 (lemmaInListMapFromThenInFromMinusOne!49 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!967007 () Bool)

(declare-fun res!647419 () Bool)

(assert (=> b!967007 (=> (not res!647419) (not e!545104))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59715 (_ BitVec 32)) Bool)

(assert (=> b!967007 (= res!647419 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!967008 () Bool)

(assert (=> b!967008 (= e!545102 (and e!545101 mapRes!34735))))

(declare-fun condMapEmpty!34735 () Bool)

(declare-fun mapDefault!34735 () ValueCell!10432)

