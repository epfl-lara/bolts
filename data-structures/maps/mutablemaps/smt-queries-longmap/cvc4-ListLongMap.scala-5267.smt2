; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70764 () Bool)

(assert start!70764)

(declare-fun b_free!13013 () Bool)

(declare-fun b_next!13013 () Bool)

(assert (=> start!70764 (= b_free!13013 (not b_next!13013))))

(declare-fun tp!45780 () Bool)

(declare-fun b_and!21893 () Bool)

(assert (=> start!70764 (= tp!45780 b_and!21893)))

(declare-fun b!821514 () Bool)

(declare-fun e!456644 () Bool)

(declare-fun e!456645 () Bool)

(declare-fun mapRes!23692 () Bool)

(assert (=> b!821514 (= e!456644 (and e!456645 mapRes!23692))))

(declare-fun condMapEmpty!23692 () Bool)

(declare-datatypes ((V!24631 0))(
  ( (V!24632 (val!7409 Int)) )
))
(declare-datatypes ((ValueCell!6946 0))(
  ( (ValueCellFull!6946 (v!9836 V!24631)) (EmptyCell!6946) )
))
(declare-datatypes ((array!45602 0))(
  ( (array!45603 (arr!21848 (Array (_ BitVec 32) ValueCell!6946)) (size!22269 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45602)

(declare-fun mapDefault!23692 () ValueCell!6946)

