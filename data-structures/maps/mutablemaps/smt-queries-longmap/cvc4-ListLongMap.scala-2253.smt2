; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36992 () Bool)

(assert start!36992)

(declare-fun b_free!8111 () Bool)

(declare-fun b_next!8111 () Bool)

(assert (=> start!36992 (= b_free!8111 (not b_next!8111))))

(declare-fun tp!29048 () Bool)

(declare-fun b_and!15371 () Bool)

(assert (=> start!36992 (= tp!29048 b_and!15371)))

(declare-fun mapNonEmpty!14703 () Bool)

(declare-fun mapRes!14703 () Bool)

(declare-fun tp!29049 () Bool)

(declare-fun e!226505 () Bool)

(assert (=> mapNonEmpty!14703 (= mapRes!14703 (and tp!29049 e!226505))))

(declare-fun mapKey!14703 () (_ BitVec 32))

(declare-datatypes ((V!12783 0))(
  ( (V!12784 (val!4424 Int)) )
))
(declare-datatypes ((ValueCell!4036 0))(
  ( (ValueCellFull!4036 (v!6617 V!12783)) (EmptyCell!4036) )
))
(declare-datatypes ((array!21431 0))(
  ( (array!21432 (arr!10181 (Array (_ BitVec 32) ValueCell!4036)) (size!10533 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21431)

(declare-fun mapValue!14703 () ValueCell!4036)

(declare-fun mapRest!14703 () (Array (_ BitVec 32) ValueCell!4036))

(assert (=> mapNonEmpty!14703 (= (arr!10181 _values!506) (store mapRest!14703 mapKey!14703 mapValue!14703))))

(declare-fun b!371009 () Bool)

(declare-fun res!208573 () Bool)

(declare-fun e!226502 () Bool)

(assert (=> b!371009 (=> (not res!208573) (not e!226502))))

(declare-datatypes ((array!21433 0))(
  ( (array!21434 (arr!10182 (Array (_ BitVec 32) (_ BitVec 64))) (size!10534 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21433)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21433 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!371009 (= res!208573 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!14703 () Bool)

(assert (=> mapIsEmpty!14703 mapRes!14703))

(declare-fun b!371010 () Bool)

(declare-fun e!226506 () Bool)

(declare-fun e!226504 () Bool)

(assert (=> b!371010 (= e!226506 (and e!226504 mapRes!14703))))

(declare-fun condMapEmpty!14703 () Bool)

(declare-fun mapDefault!14703 () ValueCell!4036)

