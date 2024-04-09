; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37178 () Bool)

(assert start!37178)

(declare-fun b_free!8297 () Bool)

(declare-fun b_next!8297 () Bool)

(assert (=> start!37178 (= b_free!8297 (not b_next!8297))))

(declare-fun tp!29607 () Bool)

(declare-fun b_and!15557 () Bool)

(assert (=> start!37178 (= tp!29607 b_and!15557)))

(declare-fun b!374922 () Bool)

(declare-fun res!211651 () Bool)

(declare-fun e!228457 () Bool)

(assert (=> b!374922 (=> (not res!211651) (not e!228457))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13031 0))(
  ( (V!13032 (val!4517 Int)) )
))
(declare-datatypes ((ValueCell!4129 0))(
  ( (ValueCellFull!4129 (v!6710 V!13031)) (EmptyCell!4129) )
))
(declare-datatypes ((array!21789 0))(
  ( (array!21790 (arr!10360 (Array (_ BitVec 32) ValueCell!4129)) (size!10712 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21789)

(declare-datatypes ((array!21791 0))(
  ( (array!21792 (arr!10361 (Array (_ BitVec 32) (_ BitVec 64))) (size!10713 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21791)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!374922 (= res!211651 (and (= (size!10712 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10713 _keys!658) (size!10712 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!374923 () Bool)

(declare-fun e!228459 () Bool)

(declare-fun e!228452 () Bool)

(declare-fun mapRes!14982 () Bool)

(assert (=> b!374923 (= e!228459 (and e!228452 mapRes!14982))))

(declare-fun condMapEmpty!14982 () Bool)

(declare-fun mapDefault!14982 () ValueCell!4129)

