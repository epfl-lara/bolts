; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36974 () Bool)

(assert start!36974)

(declare-fun b_free!8093 () Bool)

(declare-fun b_next!8093 () Bool)

(assert (=> start!36974 (= b_free!8093 (not b_next!8093))))

(declare-fun tp!28995 () Bool)

(declare-fun b_and!15353 () Bool)

(assert (=> start!36974 (= tp!28995 b_and!15353)))

(declare-fun res!208302 () Bool)

(declare-fun e!226344 () Bool)

(assert (=> start!36974 (=> (not res!208302) (not e!226344))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36974 (= res!208302 (validMask!0 mask!970))))

(assert (=> start!36974 e!226344))

(declare-datatypes ((V!12759 0))(
  ( (V!12760 (val!4415 Int)) )
))
(declare-datatypes ((ValueCell!4027 0))(
  ( (ValueCellFull!4027 (v!6608 V!12759)) (EmptyCell!4027) )
))
(declare-datatypes ((array!21399 0))(
  ( (array!21400 (arr!10165 (Array (_ BitVec 32) ValueCell!4027)) (size!10517 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21399)

(declare-fun e!226343 () Bool)

(declare-fun array_inv!7506 (array!21399) Bool)

(assert (=> start!36974 (and (array_inv!7506 _values!506) e!226343)))

(assert (=> start!36974 tp!28995))

(assert (=> start!36974 true))

(declare-fun tp_is_empty!8741 () Bool)

(assert (=> start!36974 tp_is_empty!8741))

(declare-datatypes ((array!21401 0))(
  ( (array!21402 (arr!10166 (Array (_ BitVec 32) (_ BitVec 64))) (size!10518 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21401)

(declare-fun array_inv!7507 (array!21401) Bool)

(assert (=> start!36974 (array_inv!7507 _keys!658)))

(declare-fun b!370658 () Bool)

(declare-fun res!208299 () Bool)

(declare-fun e!226342 () Bool)

(assert (=> b!370658 (=> (not res!208299) (not e!226342))))

(declare-fun lt!170025 () array!21401)

(declare-datatypes ((List!5709 0))(
  ( (Nil!5706) (Cons!5705 (h!6561 (_ BitVec 64)) (t!10867 List!5709)) )
))
(declare-fun arrayNoDuplicates!0 (array!21401 (_ BitVec 32) List!5709) Bool)

(assert (=> b!370658 (= res!208299 (arrayNoDuplicates!0 lt!170025 #b00000000000000000000000000000000 Nil!5706))))

(declare-fun b!370659 () Bool)

(declare-fun res!208303 () Bool)

(assert (=> b!370659 (=> (not res!208303) (not e!226344))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!370659 (= res!208303 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10518 _keys!658))))))

(declare-fun b!370660 () Bool)

(declare-fun e!226340 () Bool)

(assert (=> b!370660 (= e!226340 tp_is_empty!8741)))

(declare-fun mapNonEmpty!14676 () Bool)

(declare-fun mapRes!14676 () Bool)

(declare-fun tp!28994 () Bool)

(declare-fun e!226339 () Bool)

(assert (=> mapNonEmpty!14676 (= mapRes!14676 (and tp!28994 e!226339))))

(declare-fun mapKey!14676 () (_ BitVec 32))

(declare-fun mapValue!14676 () ValueCell!4027)

(declare-fun mapRest!14676 () (Array (_ BitVec 32) ValueCell!4027))

(assert (=> mapNonEmpty!14676 (= (arr!10165 _values!506) (store mapRest!14676 mapKey!14676 mapValue!14676))))

(declare-fun b!370661 () Bool)

(declare-fun res!208304 () Bool)

(assert (=> b!370661 (=> (not res!208304) (not e!226344))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!370661 (= res!208304 (and (= (size!10517 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10518 _keys!658) (size!10517 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!370662 () Bool)

(declare-fun res!208301 () Bool)

(assert (=> b!370662 (=> (not res!208301) (not e!226344))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!370662 (= res!208301 (validKeyInArray!0 k!778))))

(declare-fun b!370663 () Bool)

(declare-fun res!208296 () Bool)

(assert (=> b!370663 (=> (not res!208296) (not e!226344))))

(assert (=> b!370663 (= res!208296 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5706))))

(declare-fun b!370664 () Bool)

(assert (=> b!370664 (= e!226344 e!226342)))

(declare-fun res!208300 () Bool)

(assert (=> b!370664 (=> (not res!208300) (not e!226342))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21401 (_ BitVec 32)) Bool)

(assert (=> b!370664 (= res!208300 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170025 mask!970))))

(assert (=> b!370664 (= lt!170025 (array!21402 (store (arr!10166 _keys!658) i!548 k!778) (size!10518 _keys!658)))))

(declare-fun b!370665 () Bool)

(declare-fun res!208298 () Bool)

(assert (=> b!370665 (=> (not res!208298) (not e!226344))))

(assert (=> b!370665 (= res!208298 (or (= (select (arr!10166 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10166 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!370666 () Bool)

(assert (=> b!370666 (= e!226343 (and e!226340 mapRes!14676))))

(declare-fun condMapEmpty!14676 () Bool)

(declare-fun mapDefault!14676 () ValueCell!4027)

