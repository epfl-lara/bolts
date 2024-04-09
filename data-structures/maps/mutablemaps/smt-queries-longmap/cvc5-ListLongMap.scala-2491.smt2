; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38772 () Bool)

(assert start!38772)

(declare-fun b!403896 () Bool)

(declare-fun res!232928 () Bool)

(declare-fun e!243049 () Bool)

(assert (=> b!403896 (=> (not res!232928) (not e!243049))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!403896 (= res!232928 (validKeyInArray!0 k!794))))

(declare-fun mapNonEmpty!16896 () Bool)

(declare-fun mapRes!16896 () Bool)

(declare-fun tp!33015 () Bool)

(declare-fun e!243046 () Bool)

(assert (=> mapNonEmpty!16896 (= mapRes!16896 (and tp!33015 e!243046))))

(declare-datatypes ((V!14683 0))(
  ( (V!14684 (val!5136 Int)) )
))
(declare-datatypes ((ValueCell!4748 0))(
  ( (ValueCellFull!4748 (v!7379 V!14683)) (EmptyCell!4748) )
))
(declare-fun mapValue!16896 () ValueCell!4748)

(declare-fun mapRest!16896 () (Array (_ BitVec 32) ValueCell!4748))

(declare-datatypes ((array!24235 0))(
  ( (array!24236 (arr!11564 (Array (_ BitVec 32) ValueCell!4748)) (size!11916 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24235)

(declare-fun mapKey!16896 () (_ BitVec 32))

(assert (=> mapNonEmpty!16896 (= (arr!11564 _values!549) (store mapRest!16896 mapKey!16896 mapValue!16896))))

(declare-fun b!403897 () Bool)

(declare-fun res!232927 () Bool)

(assert (=> b!403897 (=> (not res!232927) (not e!243049))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!24237 0))(
  ( (array!24238 (arr!11565 (Array (_ BitVec 32) (_ BitVec 64))) (size!11917 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24237)

(assert (=> b!403897 (= res!232927 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11917 _keys!709))))))

(declare-fun b!403898 () Bool)

(declare-fun e!243047 () Bool)

(declare-fun tp_is_empty!10183 () Bool)

(assert (=> b!403898 (= e!243047 tp_is_empty!10183)))

(declare-fun b!403899 () Bool)

(declare-fun e!243045 () Bool)

(assert (=> b!403899 (= e!243045 false)))

(declare-fun lt!188091 () Bool)

(declare-fun lt!188090 () array!24237)

(declare-datatypes ((List!6714 0))(
  ( (Nil!6711) (Cons!6710 (h!7566 (_ BitVec 64)) (t!11896 List!6714)) )
))
(declare-fun arrayNoDuplicates!0 (array!24237 (_ BitVec 32) List!6714) Bool)

(assert (=> b!403899 (= lt!188091 (arrayNoDuplicates!0 lt!188090 #b00000000000000000000000000000000 Nil!6711))))

(declare-fun mapIsEmpty!16896 () Bool)

(assert (=> mapIsEmpty!16896 mapRes!16896))

(declare-fun b!403900 () Bool)

(assert (=> b!403900 (= e!243049 e!243045)))

(declare-fun res!232924 () Bool)

(assert (=> b!403900 (=> (not res!232924) (not e!243045))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24237 (_ BitVec 32)) Bool)

(assert (=> b!403900 (= res!232924 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188090 mask!1025))))

(assert (=> b!403900 (= lt!188090 (array!24238 (store (arr!11565 _keys!709) i!563 k!794) (size!11917 _keys!709)))))

(declare-fun b!403901 () Bool)

(declare-fun res!232932 () Bool)

(assert (=> b!403901 (=> (not res!232932) (not e!243049))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!403901 (= res!232932 (validMask!0 mask!1025))))

(declare-fun b!403902 () Bool)

(declare-fun res!232926 () Bool)

(assert (=> b!403902 (=> (not res!232926) (not e!243049))))

(assert (=> b!403902 (= res!232926 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!403903 () Bool)

(declare-fun res!232929 () Bool)

(assert (=> b!403903 (=> (not res!232929) (not e!243049))))

(assert (=> b!403903 (= res!232929 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6711))))

(declare-fun res!232931 () Bool)

(assert (=> start!38772 (=> (not res!232931) (not e!243049))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38772 (= res!232931 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11917 _keys!709))))))

(assert (=> start!38772 e!243049))

(assert (=> start!38772 true))

(declare-fun e!243044 () Bool)

(declare-fun array_inv!8450 (array!24235) Bool)

(assert (=> start!38772 (and (array_inv!8450 _values!549) e!243044)))

(declare-fun array_inv!8451 (array!24237) Bool)

(assert (=> start!38772 (array_inv!8451 _keys!709)))

(declare-fun b!403895 () Bool)

(assert (=> b!403895 (= e!243046 tp_is_empty!10183)))

(declare-fun b!403904 () Bool)

(declare-fun res!232925 () Bool)

(assert (=> b!403904 (=> (not res!232925) (not e!243049))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!403904 (= res!232925 (and (= (size!11916 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11917 _keys!709) (size!11916 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!403905 () Bool)

(assert (=> b!403905 (= e!243044 (and e!243047 mapRes!16896))))

(declare-fun condMapEmpty!16896 () Bool)

(declare-fun mapDefault!16896 () ValueCell!4748)

