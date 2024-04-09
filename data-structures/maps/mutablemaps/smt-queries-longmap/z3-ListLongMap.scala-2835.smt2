; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40984 () Bool)

(assert start!40984)

(declare-fun b_free!10911 () Bool)

(declare-fun b_next!10911 () Bool)

(assert (=> start!40984 (= b_free!10911 (not b_next!10911))))

(declare-fun tp!38559 () Bool)

(declare-fun b_and!19071 () Bool)

(assert (=> start!40984 (= tp!38559 b_and!19071)))

(declare-fun b!455927 () Bool)

(declare-fun res!272067 () Bool)

(declare-fun e!266449 () Bool)

(assert (=> b!455927 (=> (not res!272067) (not e!266449))))

(declare-datatypes ((array!28265 0))(
  ( (array!28266 (arr!13573 (Array (_ BitVec 32) (_ BitVec 64))) (size!13925 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28265)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17437 0))(
  ( (V!17438 (val!6169 Int)) )
))
(declare-datatypes ((ValueCell!5781 0))(
  ( (ValueCellFull!5781 (v!8431 V!17437)) (EmptyCell!5781) )
))
(declare-datatypes ((array!28267 0))(
  ( (array!28268 (arr!13574 (Array (_ BitVec 32) ValueCell!5781)) (size!13926 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28267)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!455927 (= res!272067 (and (= (size!13926 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13925 _keys!709) (size!13926 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!455928 () Bool)

(declare-fun res!272068 () Bool)

(assert (=> b!455928 (=> (not res!272068) (not e!266449))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!28265 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!455928 (= res!272068 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!20014 () Bool)

(declare-fun mapRes!20014 () Bool)

(assert (=> mapIsEmpty!20014 mapRes!20014))

(declare-fun b!455929 () Bool)

(declare-fun res!272072 () Bool)

(assert (=> b!455929 (=> (not res!272072) (not e!266449))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!455929 (= res!272072 (validKeyInArray!0 k0!794))))

(declare-fun b!455930 () Bool)

(declare-fun res!272077 () Bool)

(assert (=> b!455930 (=> (not res!272077) (not e!266449))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28265 (_ BitVec 32)) Bool)

(assert (=> b!455930 (= res!272077 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!455931 () Bool)

(declare-fun res!272071 () Bool)

(declare-fun e!266448 () Bool)

(assert (=> b!455931 (=> (not res!272071) (not e!266448))))

(declare-fun lt!206435 () array!28265)

(declare-datatypes ((List!8186 0))(
  ( (Nil!8183) (Cons!8182 (h!9038 (_ BitVec 64)) (t!14022 List!8186)) )
))
(declare-fun arrayNoDuplicates!0 (array!28265 (_ BitVec 32) List!8186) Bool)

(assert (=> b!455931 (= res!272071 (arrayNoDuplicates!0 lt!206435 #b00000000000000000000000000000000 Nil!8183))))

(declare-fun b!455932 () Bool)

(declare-fun res!272078 () Bool)

(assert (=> b!455932 (=> (not res!272078) (not e!266448))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!455932 (= res!272078 (bvsle from!863 i!563))))

(declare-fun b!455933 () Bool)

(assert (=> b!455933 (= e!266448 false)))

(declare-fun minValue!515 () V!17437)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!8080 0))(
  ( (tuple2!8081 (_1!4050 (_ BitVec 64)) (_2!4050 V!17437)) )
))
(declare-datatypes ((List!8187 0))(
  ( (Nil!8184) (Cons!8183 (h!9039 tuple2!8080) (t!14023 List!8187)) )
))
(declare-datatypes ((ListLongMap!7007 0))(
  ( (ListLongMap!7008 (toList!3519 List!8187)) )
))
(declare-fun lt!206434 () ListLongMap!7007)

(declare-fun zeroValue!515 () V!17437)

(declare-fun v!412 () V!17437)

(declare-fun getCurrentListMapNoExtraKeys!1695 (array!28265 array!28267 (_ BitVec 32) (_ BitVec 32) V!17437 V!17437 (_ BitVec 32) Int) ListLongMap!7007)

(assert (=> b!455933 (= lt!206434 (getCurrentListMapNoExtraKeys!1695 lt!206435 (array!28268 (store (arr!13574 _values!549) i!563 (ValueCellFull!5781 v!412)) (size!13926 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206436 () ListLongMap!7007)

(assert (=> b!455933 (= lt!206436 (getCurrentListMapNoExtraKeys!1695 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!455934 () Bool)

(declare-fun res!272070 () Bool)

(assert (=> b!455934 (=> (not res!272070) (not e!266449))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!455934 (= res!272070 (validMask!0 mask!1025))))

(declare-fun b!455935 () Bool)

(declare-fun e!266450 () Bool)

(declare-fun tp_is_empty!12249 () Bool)

(assert (=> b!455935 (= e!266450 tp_is_empty!12249)))

(declare-fun b!455936 () Bool)

(declare-fun res!272069 () Bool)

(assert (=> b!455936 (=> (not res!272069) (not e!266449))))

(assert (=> b!455936 (= res!272069 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13925 _keys!709))))))

(declare-fun b!455937 () Bool)

(declare-fun res!272073 () Bool)

(assert (=> b!455937 (=> (not res!272073) (not e!266449))))

(assert (=> b!455937 (= res!272073 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8183))))

(declare-fun res!272076 () Bool)

(assert (=> start!40984 (=> (not res!272076) (not e!266449))))

(assert (=> start!40984 (= res!272076 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13925 _keys!709))))))

(assert (=> start!40984 e!266449))

(assert (=> start!40984 tp_is_empty!12249))

(assert (=> start!40984 tp!38559))

(assert (=> start!40984 true))

(declare-fun e!266446 () Bool)

(declare-fun array_inv!9818 (array!28267) Bool)

(assert (=> start!40984 (and (array_inv!9818 _values!549) e!266446)))

(declare-fun array_inv!9819 (array!28265) Bool)

(assert (=> start!40984 (array_inv!9819 _keys!709)))

(declare-fun b!455938 () Bool)

(declare-fun res!272074 () Bool)

(assert (=> b!455938 (=> (not res!272074) (not e!266449))))

(assert (=> b!455938 (= res!272074 (or (= (select (arr!13573 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13573 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!455939 () Bool)

(assert (=> b!455939 (= e!266449 e!266448)))

(declare-fun res!272075 () Bool)

(assert (=> b!455939 (=> (not res!272075) (not e!266448))))

(assert (=> b!455939 (= res!272075 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206435 mask!1025))))

(assert (=> b!455939 (= lt!206435 (array!28266 (store (arr!13573 _keys!709) i!563 k0!794) (size!13925 _keys!709)))))

(declare-fun mapNonEmpty!20014 () Bool)

(declare-fun tp!38560 () Bool)

(assert (=> mapNonEmpty!20014 (= mapRes!20014 (and tp!38560 e!266450))))

(declare-fun mapValue!20014 () ValueCell!5781)

(declare-fun mapKey!20014 () (_ BitVec 32))

(declare-fun mapRest!20014 () (Array (_ BitVec 32) ValueCell!5781))

(assert (=> mapNonEmpty!20014 (= (arr!13574 _values!549) (store mapRest!20014 mapKey!20014 mapValue!20014))))

(declare-fun b!455940 () Bool)

(declare-fun e!266445 () Bool)

(assert (=> b!455940 (= e!266446 (and e!266445 mapRes!20014))))

(declare-fun condMapEmpty!20014 () Bool)

(declare-fun mapDefault!20014 () ValueCell!5781)

(assert (=> b!455940 (= condMapEmpty!20014 (= (arr!13574 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5781)) mapDefault!20014)))))

(declare-fun b!455941 () Bool)

(assert (=> b!455941 (= e!266445 tp_is_empty!12249)))

(assert (= (and start!40984 res!272076) b!455934))

(assert (= (and b!455934 res!272070) b!455927))

(assert (= (and b!455927 res!272067) b!455930))

(assert (= (and b!455930 res!272077) b!455937))

(assert (= (and b!455937 res!272073) b!455936))

(assert (= (and b!455936 res!272069) b!455929))

(assert (= (and b!455929 res!272072) b!455938))

(assert (= (and b!455938 res!272074) b!455928))

(assert (= (and b!455928 res!272068) b!455939))

(assert (= (and b!455939 res!272075) b!455931))

(assert (= (and b!455931 res!272071) b!455932))

(assert (= (and b!455932 res!272078) b!455933))

(assert (= (and b!455940 condMapEmpty!20014) mapIsEmpty!20014))

(assert (= (and b!455940 (not condMapEmpty!20014)) mapNonEmpty!20014))

(get-info :version)

(assert (= (and mapNonEmpty!20014 ((_ is ValueCellFull!5781) mapValue!20014)) b!455935))

(assert (= (and b!455940 ((_ is ValueCellFull!5781) mapDefault!20014)) b!455941))

(assert (= start!40984 b!455940))

(declare-fun m!439521 () Bool)

(assert (=> b!455930 m!439521))

(declare-fun m!439523 () Bool)

(assert (=> b!455929 m!439523))

(declare-fun m!439525 () Bool)

(assert (=> b!455933 m!439525))

(declare-fun m!439527 () Bool)

(assert (=> b!455933 m!439527))

(declare-fun m!439529 () Bool)

(assert (=> b!455933 m!439529))

(declare-fun m!439531 () Bool)

(assert (=> b!455928 m!439531))

(declare-fun m!439533 () Bool)

(assert (=> b!455934 m!439533))

(declare-fun m!439535 () Bool)

(assert (=> b!455938 m!439535))

(declare-fun m!439537 () Bool)

(assert (=> b!455937 m!439537))

(declare-fun m!439539 () Bool)

(assert (=> b!455931 m!439539))

(declare-fun m!439541 () Bool)

(assert (=> start!40984 m!439541))

(declare-fun m!439543 () Bool)

(assert (=> start!40984 m!439543))

(declare-fun m!439545 () Bool)

(assert (=> mapNonEmpty!20014 m!439545))

(declare-fun m!439547 () Bool)

(assert (=> b!455939 m!439547))

(declare-fun m!439549 () Bool)

(assert (=> b!455939 m!439549))

(check-sat (not start!40984) (not b!455931) (not mapNonEmpty!20014) (not b!455930) (not b!455939) (not b!455933) tp_is_empty!12249 b_and!19071 (not b!455937) (not b!455929) (not b_next!10911) (not b!455928) (not b!455934))
(check-sat b_and!19071 (not b_next!10911))
