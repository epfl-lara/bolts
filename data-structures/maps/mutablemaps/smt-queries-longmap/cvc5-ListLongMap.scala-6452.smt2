; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82580 () Bool)

(assert start!82580)

(declare-fun b_free!18685 () Bool)

(declare-fun b_next!18685 () Bool)

(assert (=> start!82580 (= b_free!18685 (not b_next!18685))))

(declare-fun tp!65175 () Bool)

(declare-fun b_and!30191 () Bool)

(assert (=> start!82580 (= tp!65175 b_and!30191)))

(declare-fun res!643830 () Bool)

(declare-fun e!542473 () Bool)

(assert (=> start!82580 (=> (not res!643830) (not e!542473))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82580 (= res!643830 (validMask!0 mask!2110))))

(assert (=> start!82580 e!542473))

(assert (=> start!82580 true))

(declare-datatypes ((V!33633 0))(
  ( (V!33634 (val!10794 Int)) )
))
(declare-datatypes ((ValueCell!10262 0))(
  ( (ValueCellFull!10262 (v!13352 V!33633)) (EmptyCell!10262) )
))
(declare-datatypes ((array!59059 0))(
  ( (array!59060 (arr!28394 (Array (_ BitVec 32) ValueCell!10262)) (size!28874 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59059)

(declare-fun e!542472 () Bool)

(declare-fun array_inv!21925 (array!59059) Bool)

(assert (=> start!82580 (and (array_inv!21925 _values!1400) e!542472)))

(declare-datatypes ((array!59061 0))(
  ( (array!59062 (arr!28395 (Array (_ BitVec 32) (_ BitVec 64))) (size!28875 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59061)

(declare-fun array_inv!21926 (array!59061) Bool)

(assert (=> start!82580 (array_inv!21926 _keys!1686)))

(assert (=> start!82580 tp!65175))

(declare-fun tp_is_empty!21487 () Bool)

(assert (=> start!82580 tp_is_empty!21487))

(declare-fun b!961883 () Bool)

(declare-fun e!542469 () Bool)

(assert (=> b!961883 (= e!542469 tp_is_empty!21487)))

(declare-fun b!961884 () Bool)

(declare-fun res!643832 () Bool)

(assert (=> b!961884 (=> (not res!643832) (not e!542473))))

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!961884 (= res!643832 (validKeyInArray!0 (select (arr!28395 _keys!1686) i!803)))))

(declare-fun b!961885 () Bool)

(declare-fun mapRes!34225 () Bool)

(assert (=> b!961885 (= e!542472 (and e!542469 mapRes!34225))))

(declare-fun condMapEmpty!34225 () Bool)

(declare-fun mapDefault!34225 () ValueCell!10262)

