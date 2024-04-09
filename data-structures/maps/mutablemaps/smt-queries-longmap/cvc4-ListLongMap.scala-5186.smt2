; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70130 () Bool)

(assert start!70130)

(declare-fun b_free!12527 () Bool)

(declare-fun b_next!12527 () Bool)

(assert (=> start!70130 (= b_free!12527 (not b_next!12527))))

(declare-fun tp!44296 () Bool)

(declare-fun b_and!21317 () Bool)

(assert (=> start!70130 (= tp!44296 b_and!21317)))

(declare-fun res!556433 () Bool)

(declare-fun e!451576 () Bool)

(assert (=> start!70130 (=> (not res!556433) (not e!451576))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70130 (= res!556433 (validMask!0 mask!1312))))

(assert (=> start!70130 e!451576))

(declare-fun tp_is_empty!14237 () Bool)

(assert (=> start!70130 tp_is_empty!14237))

(declare-datatypes ((array!44660 0))(
  ( (array!44661 (arr!21386 (Array (_ BitVec 32) (_ BitVec 64))) (size!21807 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44660)

(declare-fun array_inv!17091 (array!44660) Bool)

(assert (=> start!70130 (array_inv!17091 _keys!976)))

(assert (=> start!70130 true))

(declare-datatypes ((V!23983 0))(
  ( (V!23984 (val!7166 Int)) )
))
(declare-datatypes ((ValueCell!6703 0))(
  ( (ValueCellFull!6703 (v!9589 V!23983)) (EmptyCell!6703) )
))
(declare-datatypes ((array!44662 0))(
  ( (array!44663 (arr!21387 (Array (_ BitVec 32) ValueCell!6703)) (size!21808 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44662)

(declare-fun e!451580 () Bool)

(declare-fun array_inv!17092 (array!44662) Bool)

(assert (=> start!70130 (and (array_inv!17092 _values!788) e!451580)))

(assert (=> start!70130 tp!44296))

(declare-fun b!814529 () Bool)

(declare-fun e!451579 () Bool)

(declare-fun mapRes!22936 () Bool)

(assert (=> b!814529 (= e!451580 (and e!451579 mapRes!22936))))

(declare-fun condMapEmpty!22936 () Bool)

(declare-fun mapDefault!22936 () ValueCell!6703)

