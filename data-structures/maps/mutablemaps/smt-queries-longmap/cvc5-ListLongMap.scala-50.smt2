; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!812 () Bool)

(assert start!812)

(declare-fun b_free!205 () Bool)

(declare-fun b_next!205 () Bool)

(assert (=> start!812 (= b_free!205 (not b_next!205))))

(declare-fun tp!845 () Bool)

(declare-fun b_and!351 () Bool)

(assert (=> start!812 (= tp!845 b_and!351)))

(declare-fun b!6158 () Bool)

(declare-fun res!6646 () Bool)

(declare-fun e!3364 () Bool)

(assert (=> b!6158 (=> (not res!6646) (not e!3364))))

(declare-datatypes ((array!499 0))(
  ( (array!500 (arr!238 (Array (_ BitVec 32) (_ BitVec 64))) (size!300 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!499)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!499 (_ BitVec 32)) Bool)

(assert (=> b!6158 (= res!6646 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun res!6650 () Bool)

(assert (=> start!812 (=> (not res!6650) (not e!3364))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!812 (= res!6650 (validMask!0 mask!2250))))

(assert (=> start!812 e!3364))

(assert (=> start!812 tp!845))

(assert (=> start!812 true))

(declare-datatypes ((V!555 0))(
  ( (V!556 (val!147 Int)) )
))
(declare-datatypes ((ValueCell!125 0))(
  ( (ValueCellFull!125 (v!1238 V!555)) (EmptyCell!125) )
))
(declare-datatypes ((array!501 0))(
  ( (array!502 (arr!239 (Array (_ BitVec 32) ValueCell!125)) (size!301 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!501)

(declare-fun e!3366 () Bool)

(declare-fun array_inv!169 (array!501) Bool)

(assert (=> start!812 (and (array_inv!169 _values!1492) e!3366)))

(declare-fun tp_is_empty!283 () Bool)

(assert (=> start!812 tp_is_empty!283))

(declare-fun array_inv!170 (array!499) Bool)

(assert (=> start!812 (array_inv!170 _keys!1806)))

(declare-fun b!6159 () Bool)

(declare-fun e!3369 () Bool)

(declare-fun mapRes!395 () Bool)

(assert (=> b!6159 (= e!3366 (and e!3369 mapRes!395))))

(declare-fun condMapEmpty!395 () Bool)

(declare-fun mapDefault!395 () ValueCell!125)

