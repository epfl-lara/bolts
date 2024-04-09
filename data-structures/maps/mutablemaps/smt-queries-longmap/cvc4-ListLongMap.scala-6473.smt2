; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82710 () Bool)

(assert start!82710)

(declare-fun b_free!18815 () Bool)

(declare-fun b_next!18815 () Bool)

(assert (=> start!82710 (= b_free!18815 (not b_next!18815))))

(declare-fun tp!65565 () Bool)

(declare-fun b_and!30321 () Bool)

(assert (=> start!82710 (= tp!65565 b_and!30321)))

(declare-fun b!963878 () Bool)

(declare-fun res!645241 () Bool)

(declare-fun e!543455 () Bool)

(assert (=> b!963878 (=> (not res!645241) (not e!543455))))

(declare-datatypes ((array!59309 0))(
  ( (array!59310 (arr!28519 (Array (_ BitVec 32) (_ BitVec 64))) (size!28999 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59309)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!963878 (= res!645241 (validKeyInArray!0 (select (arr!28519 _keys!1686) i!803)))))

(declare-fun b!963879 () Bool)

(declare-fun e!543456 () Bool)

(declare-fun e!543457 () Bool)

(declare-fun mapRes!34420 () Bool)

(assert (=> b!963879 (= e!543456 (and e!543457 mapRes!34420))))

(declare-fun condMapEmpty!34420 () Bool)

(declare-datatypes ((V!33805 0))(
  ( (V!33806 (val!10859 Int)) )
))
(declare-datatypes ((ValueCell!10327 0))(
  ( (ValueCellFull!10327 (v!13417 V!33805)) (EmptyCell!10327) )
))
(declare-datatypes ((array!59311 0))(
  ( (array!59312 (arr!28520 (Array (_ BitVec 32) ValueCell!10327)) (size!29000 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59311)

(declare-fun mapDefault!34420 () ValueCell!10327)

