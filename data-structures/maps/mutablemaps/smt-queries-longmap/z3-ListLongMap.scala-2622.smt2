; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39560 () Bool)

(assert start!39560)

(declare-fun b_free!9819 () Bool)

(declare-fun b_next!9819 () Bool)

(assert (=> start!39560 (= b_free!9819 (not b_next!9819))))

(declare-fun tp!34985 () Bool)

(declare-fun b_and!17493 () Bool)

(assert (=> start!39560 (= tp!34985 b_and!17493)))

(declare-fun b!422979 () Bool)

(declare-fun res!247223 () Bool)

(declare-fun e!251525 () Bool)

(assert (=> b!422979 (=> (not res!247223) (not e!251525))))

(declare-datatypes ((array!25769 0))(
  ( (array!25770 (arr!12331 (Array (_ BitVec 32) (_ BitVec 64))) (size!12683 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25769)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25769 (_ BitVec 32)) Bool)

(assert (=> b!422979 (= res!247223 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!422980 () Bool)

(declare-fun res!247230 () Bool)

(declare-fun e!251523 () Bool)

(assert (=> b!422980 (=> (not res!247230) (not e!251523))))

(declare-fun lt!194077 () array!25769)

(declare-datatypes ((List!7235 0))(
  ( (Nil!7232) (Cons!7231 (h!8087 (_ BitVec 64)) (t!12687 List!7235)) )
))
(declare-fun arrayNoDuplicates!0 (array!25769 (_ BitVec 32) List!7235) Bool)

(assert (=> b!422980 (= res!247230 (arrayNoDuplicates!0 lt!194077 #b00000000000000000000000000000000 Nil!7232))))

(declare-fun b!422981 () Bool)

(declare-fun e!251524 () Bool)

(declare-fun tp_is_empty!10971 () Bool)

(assert (=> b!422981 (= e!251524 tp_is_empty!10971)))

(declare-fun b!422982 () Bool)

(declare-fun res!247222 () Bool)

(assert (=> b!422982 (=> (not res!247222) (not e!251523))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!422982 (= res!247222 (bvsle from!863 i!563))))

(declare-fun b!422983 () Bool)

(declare-fun res!247220 () Bool)

(assert (=> b!422983 (=> (not res!247220) (not e!251525))))

(assert (=> b!422983 (= res!247220 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7232))))

(declare-fun b!422984 () Bool)

(declare-fun res!247227 () Bool)

(assert (=> b!422984 (=> (not res!247227) (not e!251525))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!422984 (= res!247227 (validKeyInArray!0 k0!794))))

(declare-fun b!422985 () Bool)

(assert (=> b!422985 (= e!251523 false)))

(declare-datatypes ((V!15733 0))(
  ( (V!15734 (val!5530 Int)) )
))
(declare-fun minValue!515 () V!15733)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5142 0))(
  ( (ValueCellFull!5142 (v!7773 V!15733)) (EmptyCell!5142) )
))
(declare-datatypes ((array!25771 0))(
  ( (array!25772 (arr!12332 (Array (_ BitVec 32) ValueCell!5142)) (size!12684 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25771)

(declare-fun zeroValue!515 () V!15733)

(declare-datatypes ((tuple2!7190 0))(
  ( (tuple2!7191 (_1!3605 (_ BitVec 64)) (_2!3605 V!15733)) )
))
(declare-datatypes ((List!7236 0))(
  ( (Nil!7233) (Cons!7232 (h!8088 tuple2!7190) (t!12688 List!7236)) )
))
(declare-datatypes ((ListLongMap!6117 0))(
  ( (ListLongMap!6118 (toList!3074 List!7236)) )
))
(declare-fun lt!194079 () ListLongMap!6117)

(declare-fun v!412 () V!15733)

(declare-fun defaultEntry!557 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1275 (array!25769 array!25771 (_ BitVec 32) (_ BitVec 32) V!15733 V!15733 (_ BitVec 32) Int) ListLongMap!6117)

(assert (=> b!422985 (= lt!194079 (getCurrentListMapNoExtraKeys!1275 lt!194077 (array!25772 (store (arr!12332 _values!549) i!563 (ValueCellFull!5142 v!412)) (size!12684 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!194078 () ListLongMap!6117)

(assert (=> b!422985 (= lt!194078 (getCurrentListMapNoExtraKeys!1275 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!422986 () Bool)

(declare-fun res!247225 () Bool)

(assert (=> b!422986 (=> (not res!247225) (not e!251525))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!422986 (= res!247225 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!18078 () Bool)

(declare-fun mapRes!18078 () Bool)

(assert (=> mapIsEmpty!18078 mapRes!18078))

(declare-fun b!422987 () Bool)

(declare-fun e!251527 () Bool)

(assert (=> b!422987 (= e!251527 tp_is_empty!10971)))

(declare-fun b!422988 () Bool)

(declare-fun res!247228 () Bool)

(assert (=> b!422988 (=> (not res!247228) (not e!251525))))

(assert (=> b!422988 (= res!247228 (and (= (size!12684 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12683 _keys!709) (size!12684 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!247221 () Bool)

(assert (=> start!39560 (=> (not res!247221) (not e!251525))))

(assert (=> start!39560 (= res!247221 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12683 _keys!709))))))

(assert (=> start!39560 e!251525))

(assert (=> start!39560 tp_is_empty!10971))

(assert (=> start!39560 tp!34985))

(assert (=> start!39560 true))

(declare-fun e!251526 () Bool)

(declare-fun array_inv!8986 (array!25771) Bool)

(assert (=> start!39560 (and (array_inv!8986 _values!549) e!251526)))

(declare-fun array_inv!8987 (array!25769) Bool)

(assert (=> start!39560 (array_inv!8987 _keys!709)))

(declare-fun mapNonEmpty!18078 () Bool)

(declare-fun tp!34986 () Bool)

(assert (=> mapNonEmpty!18078 (= mapRes!18078 (and tp!34986 e!251524))))

(declare-fun mapRest!18078 () (Array (_ BitVec 32) ValueCell!5142))

(declare-fun mapKey!18078 () (_ BitVec 32))

(declare-fun mapValue!18078 () ValueCell!5142)

(assert (=> mapNonEmpty!18078 (= (arr!12332 _values!549) (store mapRest!18078 mapKey!18078 mapValue!18078))))

(declare-fun b!422989 () Bool)

(assert (=> b!422989 (= e!251526 (and e!251527 mapRes!18078))))

(declare-fun condMapEmpty!18078 () Bool)

(declare-fun mapDefault!18078 () ValueCell!5142)

(assert (=> b!422989 (= condMapEmpty!18078 (= (arr!12332 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5142)) mapDefault!18078)))))

(declare-fun b!422990 () Bool)

(assert (=> b!422990 (= e!251525 e!251523)))

(declare-fun res!247224 () Bool)

(assert (=> b!422990 (=> (not res!247224) (not e!251523))))

(assert (=> b!422990 (= res!247224 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194077 mask!1025))))

(assert (=> b!422990 (= lt!194077 (array!25770 (store (arr!12331 _keys!709) i!563 k0!794) (size!12683 _keys!709)))))

(declare-fun b!422991 () Bool)

(declare-fun res!247229 () Bool)

(assert (=> b!422991 (=> (not res!247229) (not e!251525))))

(assert (=> b!422991 (= res!247229 (or (= (select (arr!12331 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12331 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!422992 () Bool)

(declare-fun res!247226 () Bool)

(assert (=> b!422992 (=> (not res!247226) (not e!251525))))

(assert (=> b!422992 (= res!247226 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12683 _keys!709))))))

(declare-fun b!422993 () Bool)

(declare-fun res!247219 () Bool)

(assert (=> b!422993 (=> (not res!247219) (not e!251525))))

(declare-fun arrayContainsKey!0 (array!25769 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!422993 (= res!247219 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(assert (= (and start!39560 res!247221) b!422986))

(assert (= (and b!422986 res!247225) b!422988))

(assert (= (and b!422988 res!247228) b!422979))

(assert (= (and b!422979 res!247223) b!422983))

(assert (= (and b!422983 res!247220) b!422992))

(assert (= (and b!422992 res!247226) b!422984))

(assert (= (and b!422984 res!247227) b!422991))

(assert (= (and b!422991 res!247229) b!422993))

(assert (= (and b!422993 res!247219) b!422990))

(assert (= (and b!422990 res!247224) b!422980))

(assert (= (and b!422980 res!247230) b!422982))

(assert (= (and b!422982 res!247222) b!422985))

(assert (= (and b!422989 condMapEmpty!18078) mapIsEmpty!18078))

(assert (= (and b!422989 (not condMapEmpty!18078)) mapNonEmpty!18078))

(get-info :version)

(assert (= (and mapNonEmpty!18078 ((_ is ValueCellFull!5142) mapValue!18078)) b!422981))

(assert (= (and b!422989 ((_ is ValueCellFull!5142) mapDefault!18078)) b!422987))

(assert (= start!39560 b!422989))

(declare-fun m!412585 () Bool)

(assert (=> b!422990 m!412585))

(declare-fun m!412587 () Bool)

(assert (=> b!422990 m!412587))

(declare-fun m!412589 () Bool)

(assert (=> b!422985 m!412589))

(declare-fun m!412591 () Bool)

(assert (=> b!422985 m!412591))

(declare-fun m!412593 () Bool)

(assert (=> b!422985 m!412593))

(declare-fun m!412595 () Bool)

(assert (=> b!422983 m!412595))

(declare-fun m!412597 () Bool)

(assert (=> b!422979 m!412597))

(declare-fun m!412599 () Bool)

(assert (=> mapNonEmpty!18078 m!412599))

(declare-fun m!412601 () Bool)

(assert (=> b!422984 m!412601))

(declare-fun m!412603 () Bool)

(assert (=> start!39560 m!412603))

(declare-fun m!412605 () Bool)

(assert (=> start!39560 m!412605))

(declare-fun m!412607 () Bool)

(assert (=> b!422993 m!412607))

(declare-fun m!412609 () Bool)

(assert (=> b!422991 m!412609))

(declare-fun m!412611 () Bool)

(assert (=> b!422980 m!412611))

(declare-fun m!412613 () Bool)

(assert (=> b!422986 m!412613))

(check-sat (not b!422983) (not b!422980) (not b!422993) (not b_next!9819) (not b!422985) (not mapNonEmpty!18078) (not start!39560) b_and!17493 tp_is_empty!10971 (not b!422986) (not b!422990) (not b!422979) (not b!422984))
(check-sat b_and!17493 (not b_next!9819))
