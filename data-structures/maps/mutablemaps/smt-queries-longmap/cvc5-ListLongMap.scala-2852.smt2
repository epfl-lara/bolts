; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41150 () Bool)

(assert start!41150)

(declare-fun b_free!11011 () Bool)

(declare-fun b_next!11011 () Bool)

(assert (=> start!41150 (= b_free!11011 (not b_next!11011))))

(declare-fun tp!38868 () Bool)

(declare-fun b_and!19279 () Bool)

(assert (=> start!41150 (= tp!38868 b_and!19279)))

(declare-fun b!458970 () Bool)

(declare-fun res!274326 () Bool)

(declare-fun e!267917 () Bool)

(assert (=> b!458970 (=> (not res!274326) (not e!267917))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!458970 (= res!274326 (validKeyInArray!0 k!794))))

(declare-fun b!458971 () Bool)

(declare-fun res!274335 () Bool)

(assert (=> b!458971 (=> (not res!274335) (not e!267917))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!28463 0))(
  ( (array!28464 (arr!13669 (Array (_ BitVec 32) (_ BitVec 64))) (size!14021 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28463)

(assert (=> b!458971 (= res!274335 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14021 _keys!709))))))

(declare-fun b!458972 () Bool)

(declare-fun res!274334 () Bool)

(assert (=> b!458972 (=> (not res!274334) (not e!267917))))

(declare-fun arrayContainsKey!0 (array!28463 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!458972 (= res!274334 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!458973 () Bool)

(declare-fun res!274336 () Bool)

(declare-fun e!267924 () Bool)

(assert (=> b!458973 (=> (not res!274336) (not e!267924))))

(declare-fun lt!207693 () array!28463)

(declare-datatypes ((List!8264 0))(
  ( (Nil!8261) (Cons!8260 (h!9116 (_ BitVec 64)) (t!14162 List!8264)) )
))
(declare-fun arrayNoDuplicates!0 (array!28463 (_ BitVec 32) List!8264) Bool)

(assert (=> b!458973 (= res!274336 (arrayNoDuplicates!0 lt!207693 #b00000000000000000000000000000000 Nil!8261))))

(declare-fun b!458974 () Bool)

(declare-datatypes ((Unit!13277 0))(
  ( (Unit!13278) )
))
(declare-fun e!267925 () Unit!13277)

(declare-fun Unit!13279 () Unit!13277)

(assert (=> b!458974 (= e!267925 Unit!13279)))

(declare-fun b!458975 () Bool)

(declare-fun e!267923 () Bool)

(declare-fun tp_is_empty!12349 () Bool)

(assert (=> b!458975 (= e!267923 tp_is_empty!12349)))

(declare-fun b!458976 () Bool)

(assert (=> b!458976 (= e!267917 e!267924)))

(declare-fun res!274332 () Bool)

(assert (=> b!458976 (=> (not res!274332) (not e!267924))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28463 (_ BitVec 32)) Bool)

(assert (=> b!458976 (= res!274332 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!207693 mask!1025))))

(assert (=> b!458976 (= lt!207693 (array!28464 (store (arr!13669 _keys!709) i!563 k!794) (size!14021 _keys!709)))))

(declare-fun b!458977 () Bool)

(declare-fun res!274339 () Bool)

(assert (=> b!458977 (=> (not res!274339) (not e!267917))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17571 0))(
  ( (V!17572 (val!6219 Int)) )
))
(declare-datatypes ((ValueCell!5831 0))(
  ( (ValueCellFull!5831 (v!8493 V!17571)) (EmptyCell!5831) )
))
(declare-datatypes ((array!28465 0))(
  ( (array!28466 (arr!13670 (Array (_ BitVec 32) ValueCell!5831)) (size!14022 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28465)

(assert (=> b!458977 (= res!274339 (and (= (size!14022 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14021 _keys!709) (size!14022 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!458978 () Bool)

(declare-fun res!274330 () Bool)

(assert (=> b!458978 (=> (not res!274330) (not e!267917))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!458978 (= res!274330 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!20173 () Bool)

(declare-fun mapRes!20173 () Bool)

(declare-fun tp!38869 () Bool)

(declare-fun e!267918 () Bool)

(assert (=> mapNonEmpty!20173 (= mapRes!20173 (and tp!38869 e!267918))))

(declare-fun mapKey!20173 () (_ BitVec 32))

(declare-fun mapRest!20173 () (Array (_ BitVec 32) ValueCell!5831))

(declare-fun mapValue!20173 () ValueCell!5831)

(assert (=> mapNonEmpty!20173 (= (arr!13670 _values!549) (store mapRest!20173 mapKey!20173 mapValue!20173))))

(declare-fun e!267922 () Bool)

(declare-fun b!458979 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!458979 (= e!267922 (not (= (select (arr!13669 _keys!709) from!863) k!794)))))

(declare-fun lt!207688 () Unit!13277)

(assert (=> b!458979 (= lt!207688 e!267925)))

(declare-fun c!56390 () Bool)

(assert (=> b!458979 (= c!56390 (= (select (arr!13669 _keys!709) from!863) k!794))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!8160 0))(
  ( (tuple2!8161 (_1!4090 (_ BitVec 64)) (_2!4090 V!17571)) )
))
(declare-datatypes ((List!8265 0))(
  ( (Nil!8262) (Cons!8261 (h!9117 tuple2!8160) (t!14163 List!8265)) )
))
(declare-datatypes ((ListLongMap!7087 0))(
  ( (ListLongMap!7088 (toList!3559 List!8265)) )
))
(declare-fun lt!207684 () ListLongMap!7087)

(declare-fun lt!207685 () ListLongMap!7087)

(declare-fun +!1579 (ListLongMap!7087 tuple2!8160) ListLongMap!7087)

(declare-fun get!6753 (ValueCell!5831 V!17571) V!17571)

(declare-fun dynLambda!889 (Int (_ BitVec 64)) V!17571)

(assert (=> b!458979 (= lt!207685 (+!1579 lt!207684 (tuple2!8161 (select (arr!13669 _keys!709) from!863) (get!6753 (select (arr!13670 _values!549) from!863) (dynLambda!889 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!458980 () Bool)

(declare-fun res!274338 () Bool)

(assert (=> b!458980 (=> (not res!274338) (not e!267924))))

(assert (=> b!458980 (= res!274338 (bvsle from!863 i!563))))

(declare-fun b!458981 () Bool)

(declare-fun Unit!13280 () Unit!13277)

(assert (=> b!458981 (= e!267925 Unit!13280)))

(declare-fun lt!207690 () Unit!13277)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!28463 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!13277)

(assert (=> b!458981 (= lt!207690 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!458981 false))

(declare-fun b!458982 () Bool)

(declare-fun e!267920 () Bool)

(assert (=> b!458982 (= e!267920 (and e!267923 mapRes!20173))))

(declare-fun condMapEmpty!20173 () Bool)

(declare-fun mapDefault!20173 () ValueCell!5831)

