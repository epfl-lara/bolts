; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20804 () Bool)

(assert start!20804)

(declare-fun b_free!5445 () Bool)

(declare-fun b_next!5445 () Bool)

(assert (=> start!20804 (= b_free!5445 (not b_next!5445))))

(declare-fun tp!19376 () Bool)

(declare-fun b_and!12209 () Bool)

(assert (=> start!20804 (= tp!19376 b_and!12209)))

(declare-fun b!208296 () Bool)

(declare-fun res!101322 () Bool)

(declare-fun e!135877 () Bool)

(assert (=> b!208296 (=> (not res!101322) (not e!135877))))

(declare-datatypes ((array!9816 0))(
  ( (array!9817 (arr!4658 (Array (_ BitVec 32) (_ BitVec 64))) (size!4983 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9816)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9816 (_ BitVec 32)) Bool)

(assert (=> b!208296 (= res!101322 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapIsEmpty!9029 () Bool)

(declare-fun mapRes!9029 () Bool)

(assert (=> mapIsEmpty!9029 mapRes!9029))

(declare-fun b!208297 () Bool)

(declare-fun res!101326 () Bool)

(assert (=> b!208297 (=> (not res!101326) (not e!135877))))

(declare-datatypes ((List!3004 0))(
  ( (Nil!3001) (Cons!3000 (h!3642 (_ BitVec 64)) (t!7943 List!3004)) )
))
(declare-fun arrayNoDuplicates!0 (array!9816 (_ BitVec 32) List!3004) Bool)

(assert (=> b!208297 (= res!101326 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3001))))

(declare-fun b!208298 () Bool)

(declare-fun e!135879 () Bool)

(declare-fun tp_is_empty!5307 () Bool)

(assert (=> b!208298 (= e!135879 tp_is_empty!5307)))

(declare-fun b!208299 () Bool)

(assert (=> b!208299 (= e!135877 false)))

(declare-datatypes ((V!6723 0))(
  ( (V!6724 (val!2698 Int)) )
))
(declare-datatypes ((tuple2!4084 0))(
  ( (tuple2!4085 (_1!2052 (_ BitVec 64)) (_2!2052 V!6723)) )
))
(declare-datatypes ((List!3005 0))(
  ( (Nil!3002) (Cons!3001 (h!3643 tuple2!4084) (t!7944 List!3005)) )
))
(declare-datatypes ((ListLongMap!3011 0))(
  ( (ListLongMap!3012 (toList!1521 List!3005)) )
))
(declare-fun lt!106789 () ListLongMap!3011)

(declare-datatypes ((ValueCell!2310 0))(
  ( (ValueCellFull!2310 (v!4664 V!6723)) (EmptyCell!2310) )
))
(declare-datatypes ((array!9818 0))(
  ( (array!9819 (arr!4659 (Array (_ BitVec 32) ValueCell!2310)) (size!4984 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9818)

(declare-fun v!520 () V!6723)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6723)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6723)

(declare-fun getCurrentListMapNoExtraKeys!454 (array!9816 array!9818 (_ BitVec 32) (_ BitVec 32) V!6723 V!6723 (_ BitVec 32) Int) ListLongMap!3011)

(assert (=> b!208299 (= lt!106789 (getCurrentListMapNoExtraKeys!454 _keys!825 (array!9819 (store (arr!4659 _values!649) i!601 (ValueCellFull!2310 v!520)) (size!4984 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106788 () ListLongMap!3011)

(assert (=> b!208299 (= lt!106788 (getCurrentListMapNoExtraKeys!454 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!208300 () Bool)

(declare-fun res!101325 () Bool)

(assert (=> b!208300 (=> (not res!101325) (not e!135877))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!208300 (= res!101325 (validKeyInArray!0 k0!843))))

(declare-fun b!208301 () Bool)

(declare-fun res!101320 () Bool)

(assert (=> b!208301 (=> (not res!101320) (not e!135877))))

(assert (=> b!208301 (= res!101320 (and (= (size!4984 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4983 _keys!825) (size!4984 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!101323 () Bool)

(assert (=> start!20804 (=> (not res!101323) (not e!135877))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20804 (= res!101323 (validMask!0 mask!1149))))

(assert (=> start!20804 e!135877))

(declare-fun e!135876 () Bool)

(declare-fun array_inv!3079 (array!9818) Bool)

(assert (=> start!20804 (and (array_inv!3079 _values!649) e!135876)))

(assert (=> start!20804 true))

(assert (=> start!20804 tp_is_empty!5307))

(declare-fun array_inv!3080 (array!9816) Bool)

(assert (=> start!20804 (array_inv!3080 _keys!825)))

(assert (=> start!20804 tp!19376))

(declare-fun b!208302 () Bool)

(declare-fun res!101321 () Bool)

(assert (=> b!208302 (=> (not res!101321) (not e!135877))))

(assert (=> b!208302 (= res!101321 (= (select (arr!4658 _keys!825) i!601) k0!843))))

(declare-fun mapNonEmpty!9029 () Bool)

(declare-fun tp!19375 () Bool)

(assert (=> mapNonEmpty!9029 (= mapRes!9029 (and tp!19375 e!135879))))

(declare-fun mapRest!9029 () (Array (_ BitVec 32) ValueCell!2310))

(declare-fun mapKey!9029 () (_ BitVec 32))

(declare-fun mapValue!9029 () ValueCell!2310)

(assert (=> mapNonEmpty!9029 (= (arr!4659 _values!649) (store mapRest!9029 mapKey!9029 mapValue!9029))))

(declare-fun b!208303 () Bool)

(declare-fun e!135878 () Bool)

(assert (=> b!208303 (= e!135876 (and e!135878 mapRes!9029))))

(declare-fun condMapEmpty!9029 () Bool)

(declare-fun mapDefault!9029 () ValueCell!2310)

(assert (=> b!208303 (= condMapEmpty!9029 (= (arr!4659 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2310)) mapDefault!9029)))))

(declare-fun b!208304 () Bool)

(declare-fun res!101324 () Bool)

(assert (=> b!208304 (=> (not res!101324) (not e!135877))))

(assert (=> b!208304 (= res!101324 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4983 _keys!825))))))

(declare-fun b!208305 () Bool)

(assert (=> b!208305 (= e!135878 tp_is_empty!5307)))

(assert (= (and start!20804 res!101323) b!208301))

(assert (= (and b!208301 res!101320) b!208296))

(assert (= (and b!208296 res!101322) b!208297))

(assert (= (and b!208297 res!101326) b!208304))

(assert (= (and b!208304 res!101324) b!208300))

(assert (= (and b!208300 res!101325) b!208302))

(assert (= (and b!208302 res!101321) b!208299))

(assert (= (and b!208303 condMapEmpty!9029) mapIsEmpty!9029))

(assert (= (and b!208303 (not condMapEmpty!9029)) mapNonEmpty!9029))

(get-info :version)

(assert (= (and mapNonEmpty!9029 ((_ is ValueCellFull!2310) mapValue!9029)) b!208298))

(assert (= (and b!208303 ((_ is ValueCellFull!2310) mapDefault!9029)) b!208305))

(assert (= start!20804 b!208303))

(declare-fun m!235975 () Bool)

(assert (=> b!208302 m!235975))

(declare-fun m!235977 () Bool)

(assert (=> b!208296 m!235977))

(declare-fun m!235979 () Bool)

(assert (=> mapNonEmpty!9029 m!235979))

(declare-fun m!235981 () Bool)

(assert (=> start!20804 m!235981))

(declare-fun m!235983 () Bool)

(assert (=> start!20804 m!235983))

(declare-fun m!235985 () Bool)

(assert (=> start!20804 m!235985))

(declare-fun m!235987 () Bool)

(assert (=> b!208299 m!235987))

(declare-fun m!235989 () Bool)

(assert (=> b!208299 m!235989))

(declare-fun m!235991 () Bool)

(assert (=> b!208299 m!235991))

(declare-fun m!235993 () Bool)

(assert (=> b!208297 m!235993))

(declare-fun m!235995 () Bool)

(assert (=> b!208300 m!235995))

(check-sat tp_is_empty!5307 (not b!208296) (not mapNonEmpty!9029) (not start!20804) b_and!12209 (not b!208300) (not b!208297) (not b_next!5445) (not b!208299))
(check-sat b_and!12209 (not b_next!5445))
