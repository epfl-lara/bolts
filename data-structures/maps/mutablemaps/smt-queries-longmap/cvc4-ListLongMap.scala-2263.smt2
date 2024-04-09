; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37052 () Bool)

(assert start!37052)

(declare-fun b_free!8171 () Bool)

(declare-fun b_next!8171 () Bool)

(assert (=> start!37052 (= b_free!8171 (not b_next!8171))))

(declare-fun tp!29229 () Bool)

(declare-fun b_and!15431 () Bool)

(assert (=> start!37052 (= tp!29229 b_and!15431)))

(declare-fun b!372179 () Bool)

(declare-fun res!209466 () Bool)

(declare-fun e!227045 () Bool)

(assert (=> b!372179 (=> (not res!209466) (not e!227045))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!21547 0))(
  ( (array!21548 (arr!10239 (Array (_ BitVec 32) (_ BitVec 64))) (size!10591 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21547)

(assert (=> b!372179 (= res!209466 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10591 _keys!658))))))

(declare-fun b!372180 () Bool)

(declare-fun res!209465 () Bool)

(assert (=> b!372180 (=> (not res!209465) (not e!227045))))

(assert (=> b!372180 (= res!209465 (or (= (select (arr!10239 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10239 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!372181 () Bool)

(declare-fun res!209469 () Bool)

(assert (=> b!372181 (=> (not res!209469) (not e!227045))))

(declare-datatypes ((List!5759 0))(
  ( (Nil!5756) (Cons!5755 (h!6611 (_ BitVec 64)) (t!10917 List!5759)) )
))
(declare-fun arrayNoDuplicates!0 (array!21547 (_ BitVec 32) List!5759) Bool)

(assert (=> b!372181 (= res!209469 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5756))))

(declare-fun b!372182 () Bool)

(declare-fun e!227043 () Bool)

(declare-fun tp_is_empty!8819 () Bool)

(assert (=> b!372182 (= e!227043 tp_is_empty!8819)))

(declare-fun b!372184 () Bool)

(declare-fun e!227041 () Bool)

(assert (=> b!372184 (= e!227045 e!227041)))

(declare-fun res!209472 () Bool)

(assert (=> b!372184 (=> (not res!209472) (not e!227041))))

(declare-fun lt!170678 () array!21547)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21547 (_ BitVec 32)) Bool)

(assert (=> b!372184 (= res!209472 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170678 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!372184 (= lt!170678 (array!21548 (store (arr!10239 _keys!658) i!548 k!778) (size!10591 _keys!658)))))

(declare-fun b!372185 () Bool)

(declare-fun e!227044 () Bool)

(assert (=> b!372185 (= e!227044 tp_is_empty!8819)))

(declare-fun b!372186 () Bool)

(declare-fun res!209467 () Bool)

(assert (=> b!372186 (=> (not res!209467) (not e!227045))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12863 0))(
  ( (V!12864 (val!4454 Int)) )
))
(declare-datatypes ((ValueCell!4066 0))(
  ( (ValueCellFull!4066 (v!6647 V!12863)) (EmptyCell!4066) )
))
(declare-datatypes ((array!21549 0))(
  ( (array!21550 (arr!10240 (Array (_ BitVec 32) ValueCell!4066)) (size!10592 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21549)

(assert (=> b!372186 (= res!209467 (and (= (size!10592 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10591 _keys!658) (size!10592 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!372187 () Bool)

(declare-fun e!227046 () Bool)

(declare-fun mapRes!14793 () Bool)

(assert (=> b!372187 (= e!227046 (and e!227043 mapRes!14793))))

(declare-fun condMapEmpty!14793 () Bool)

(declare-fun mapDefault!14793 () ValueCell!4066)

