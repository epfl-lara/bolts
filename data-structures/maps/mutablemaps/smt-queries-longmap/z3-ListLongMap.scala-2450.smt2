; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38528 () Bool)

(assert start!38528)

(declare-fun res!228615 () Bool)

(declare-fun e!240526 () Bool)

(assert (=> start!38528 (=> (not res!228615) (not e!240526))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!23761 0))(
  ( (array!23762 (arr!11327 (Array (_ BitVec 32) (_ BitVec 64))) (size!11679 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23761)

(assert (=> start!38528 (= res!228615 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11679 _keys!709))))))

(assert (=> start!38528 e!240526))

(assert (=> start!38528 true))

(declare-datatypes ((V!14357 0))(
  ( (V!14358 (val!5014 Int)) )
))
(declare-datatypes ((ValueCell!4626 0))(
  ( (ValueCellFull!4626 (v!7257 V!14357)) (EmptyCell!4626) )
))
(declare-datatypes ((array!23763 0))(
  ( (array!23764 (arr!11328 (Array (_ BitVec 32) ValueCell!4626)) (size!11680 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23763)

(declare-fun e!240529 () Bool)

(declare-fun array_inv!8294 (array!23763) Bool)

(assert (=> start!38528 (and (array_inv!8294 _values!549) e!240529)))

(declare-fun array_inv!8295 (array!23761) Bool)

(assert (=> start!38528 (array_inv!8295 _keys!709)))

(declare-fun b!397841 () Bool)

(declare-fun res!228620 () Bool)

(assert (=> b!397841 (=> (not res!228620) (not e!240526))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!397841 (= res!228620 (or (= (select (arr!11327 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11327 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!16530 () Bool)

(declare-fun mapRes!16530 () Bool)

(declare-fun tp!32325 () Bool)

(declare-fun e!240528 () Bool)

(assert (=> mapNonEmpty!16530 (= mapRes!16530 (and tp!32325 e!240528))))

(declare-fun mapValue!16530 () ValueCell!4626)

(declare-fun mapKey!16530 () (_ BitVec 32))

(declare-fun mapRest!16530 () (Array (_ BitVec 32) ValueCell!4626))

(assert (=> mapNonEmpty!16530 (= (arr!11328 _values!549) (store mapRest!16530 mapKey!16530 mapValue!16530))))

(declare-fun b!397842 () Bool)

(declare-fun tp_is_empty!9939 () Bool)

(assert (=> b!397842 (= e!240528 tp_is_empty!9939)))

(declare-fun b!397843 () Bool)

(declare-fun res!228618 () Bool)

(assert (=> b!397843 (=> (not res!228618) (not e!240526))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23761 (_ BitVec 32)) Bool)

(assert (=> b!397843 (= res!228618 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!397844 () Bool)

(declare-fun res!228617 () Bool)

(assert (=> b!397844 (=> (not res!228617) (not e!240526))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!397844 (= res!228617 (and (= (size!11680 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11679 _keys!709) (size!11680 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!397845 () Bool)

(declare-fun e!240527 () Bool)

(assert (=> b!397845 (= e!240527 tp_is_empty!9939)))

(declare-fun b!397846 () Bool)

(declare-fun res!228622 () Bool)

(assert (=> b!397846 (=> (not res!228622) (not e!240526))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!397846 (= res!228622 (validMask!0 mask!1025))))

(declare-fun b!397847 () Bool)

(declare-fun res!228616 () Bool)

(assert (=> b!397847 (=> (not res!228616) (not e!240526))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!397847 (= res!228616 (validKeyInArray!0 k0!794))))

(declare-fun mapIsEmpty!16530 () Bool)

(assert (=> mapIsEmpty!16530 mapRes!16530))

(declare-fun b!397848 () Bool)

(declare-fun res!228624 () Bool)

(assert (=> b!397848 (=> (not res!228624) (not e!240526))))

(assert (=> b!397848 (= res!228624 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11679 _keys!709))))))

(declare-fun b!397849 () Bool)

(declare-fun e!240524 () Bool)

(assert (=> b!397849 (= e!240526 e!240524)))

(declare-fun res!228619 () Bool)

(assert (=> b!397849 (=> (not res!228619) (not e!240524))))

(declare-fun lt!187358 () array!23761)

(assert (=> b!397849 (= res!228619 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187358 mask!1025))))

(assert (=> b!397849 (= lt!187358 (array!23762 (store (arr!11327 _keys!709) i!563 k0!794) (size!11679 _keys!709)))))

(declare-fun b!397850 () Bool)

(assert (=> b!397850 (= e!240529 (and e!240527 mapRes!16530))))

(declare-fun condMapEmpty!16530 () Bool)

(declare-fun mapDefault!16530 () ValueCell!4626)

(assert (=> b!397850 (= condMapEmpty!16530 (= (arr!11328 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4626)) mapDefault!16530)))))

(declare-fun b!397851 () Bool)

(declare-fun res!228623 () Bool)

(assert (=> b!397851 (=> (not res!228623) (not e!240526))))

(declare-datatypes ((List!6524 0))(
  ( (Nil!6521) (Cons!6520 (h!7376 (_ BitVec 64)) (t!11706 List!6524)) )
))
(declare-fun arrayNoDuplicates!0 (array!23761 (_ BitVec 32) List!6524) Bool)

(assert (=> b!397851 (= res!228623 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6521))))

(declare-fun b!397852 () Bool)

(declare-fun res!228621 () Bool)

(assert (=> b!397852 (=> (not res!228621) (not e!240526))))

(declare-fun arrayContainsKey!0 (array!23761 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!397852 (= res!228621 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!397853 () Bool)

(assert (=> b!397853 (= e!240524 false)))

(declare-fun lt!187359 () Bool)

(assert (=> b!397853 (= lt!187359 (arrayNoDuplicates!0 lt!187358 #b00000000000000000000000000000000 Nil!6521))))

(assert (= (and start!38528 res!228615) b!397846))

(assert (= (and b!397846 res!228622) b!397844))

(assert (= (and b!397844 res!228617) b!397843))

(assert (= (and b!397843 res!228618) b!397851))

(assert (= (and b!397851 res!228623) b!397848))

(assert (= (and b!397848 res!228624) b!397847))

(assert (= (and b!397847 res!228616) b!397841))

(assert (= (and b!397841 res!228620) b!397852))

(assert (= (and b!397852 res!228621) b!397849))

(assert (= (and b!397849 res!228619) b!397853))

(assert (= (and b!397850 condMapEmpty!16530) mapIsEmpty!16530))

(assert (= (and b!397850 (not condMapEmpty!16530)) mapNonEmpty!16530))

(get-info :version)

(assert (= (and mapNonEmpty!16530 ((_ is ValueCellFull!4626) mapValue!16530)) b!397842))

(assert (= (and b!397850 ((_ is ValueCellFull!4626) mapDefault!16530)) b!397845))

(assert (= start!38528 b!397850))

(declare-fun m!392901 () Bool)

(assert (=> start!38528 m!392901))

(declare-fun m!392903 () Bool)

(assert (=> start!38528 m!392903))

(declare-fun m!392905 () Bool)

(assert (=> b!397846 m!392905))

(declare-fun m!392907 () Bool)

(assert (=> b!397853 m!392907))

(declare-fun m!392909 () Bool)

(assert (=> b!397851 m!392909))

(declare-fun m!392911 () Bool)

(assert (=> mapNonEmpty!16530 m!392911))

(declare-fun m!392913 () Bool)

(assert (=> b!397841 m!392913))

(declare-fun m!392915 () Bool)

(assert (=> b!397849 m!392915))

(declare-fun m!392917 () Bool)

(assert (=> b!397849 m!392917))

(declare-fun m!392919 () Bool)

(assert (=> b!397847 m!392919))

(declare-fun m!392921 () Bool)

(assert (=> b!397852 m!392921))

(declare-fun m!392923 () Bool)

(assert (=> b!397843 m!392923))

(check-sat tp_is_empty!9939 (not b!397853) (not mapNonEmpty!16530) (not b!397847) (not b!397846) (not b!397843) (not b!397849) (not b!397852) (not b!397851) (not start!38528))
(check-sat)
