; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38978 () Bool)

(assert start!38978)

(declare-fun b!407912 () Bool)

(declare-fun res!236015 () Bool)

(declare-fun e!244901 () Bool)

(assert (=> b!407912 (=> (not res!236015) (not e!244901))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!407912 (= res!236015 (validKeyInArray!0 k0!794))))

(declare-fun res!236020 () Bool)

(assert (=> start!38978 (=> (not res!236020) (not e!244901))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!24633 0))(
  ( (array!24634 (arr!11763 (Array (_ BitVec 32) (_ BitVec 64))) (size!12115 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24633)

(assert (=> start!38978 (= res!236020 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12115 _keys!709))))))

(assert (=> start!38978 e!244901))

(assert (=> start!38978 true))

(declare-datatypes ((V!14957 0))(
  ( (V!14958 (val!5239 Int)) )
))
(declare-datatypes ((ValueCell!4851 0))(
  ( (ValueCellFull!4851 (v!7482 V!14957)) (EmptyCell!4851) )
))
(declare-datatypes ((array!24635 0))(
  ( (array!24636 (arr!11764 (Array (_ BitVec 32) ValueCell!4851)) (size!12116 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24635)

(declare-fun e!244898 () Bool)

(declare-fun array_inv!8590 (array!24635) Bool)

(assert (=> start!38978 (and (array_inv!8590 _values!549) e!244898)))

(declare-fun array_inv!8591 (array!24633) Bool)

(assert (=> start!38978 (array_inv!8591 _keys!709)))

(declare-fun b!407913 () Bool)

(declare-fun res!236021 () Bool)

(assert (=> b!407913 (=> (not res!236021) (not e!244901))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!407913 (= res!236021 (validMask!0 mask!1025))))

(declare-fun b!407914 () Bool)

(declare-fun res!236017 () Bool)

(assert (=> b!407914 (=> (not res!236017) (not e!244901))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!407914 (= res!236017 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12115 _keys!709))))))

(declare-fun b!407915 () Bool)

(declare-fun res!236018 () Bool)

(assert (=> b!407915 (=> (not res!236018) (not e!244901))))

(assert (=> b!407915 (= res!236018 (or (= (select (arr!11763 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11763 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!407916 () Bool)

(declare-fun e!244899 () Bool)

(assert (=> b!407916 (= e!244899 false)))

(declare-fun lt!188709 () Bool)

(declare-fun lt!188708 () array!24633)

(declare-datatypes ((List!6798 0))(
  ( (Nil!6795) (Cons!6794 (h!7650 (_ BitVec 64)) (t!11980 List!6798)) )
))
(declare-fun arrayNoDuplicates!0 (array!24633 (_ BitVec 32) List!6798) Bool)

(assert (=> b!407916 (= lt!188709 (arrayNoDuplicates!0 lt!188708 #b00000000000000000000000000000000 Nil!6795))))

(declare-fun mapIsEmpty!17205 () Bool)

(declare-fun mapRes!17205 () Bool)

(assert (=> mapIsEmpty!17205 mapRes!17205))

(declare-fun b!407917 () Bool)

(declare-fun e!244900 () Bool)

(assert (=> b!407917 (= e!244898 (and e!244900 mapRes!17205))))

(declare-fun condMapEmpty!17205 () Bool)

(declare-fun mapDefault!17205 () ValueCell!4851)

(assert (=> b!407917 (= condMapEmpty!17205 (= (arr!11764 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4851)) mapDefault!17205)))))

(declare-fun b!407918 () Bool)

(declare-fun tp_is_empty!10389 () Bool)

(assert (=> b!407918 (= e!244900 tp_is_empty!10389)))

(declare-fun mapNonEmpty!17205 () Bool)

(declare-fun tp!33324 () Bool)

(declare-fun e!244902 () Bool)

(assert (=> mapNonEmpty!17205 (= mapRes!17205 (and tp!33324 e!244902))))

(declare-fun mapRest!17205 () (Array (_ BitVec 32) ValueCell!4851))

(declare-fun mapKey!17205 () (_ BitVec 32))

(declare-fun mapValue!17205 () ValueCell!4851)

(assert (=> mapNonEmpty!17205 (= (arr!11764 _values!549) (store mapRest!17205 mapKey!17205 mapValue!17205))))

(declare-fun b!407919 () Bool)

(assert (=> b!407919 (= e!244902 tp_is_empty!10389)))

(declare-fun b!407920 () Bool)

(declare-fun res!236019 () Bool)

(assert (=> b!407920 (=> (not res!236019) (not e!244901))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!407920 (= res!236019 (and (= (size!12116 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12115 _keys!709) (size!12116 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!407921 () Bool)

(declare-fun res!236022 () Bool)

(assert (=> b!407921 (=> (not res!236022) (not e!244901))))

(assert (=> b!407921 (= res!236022 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6795))))

(declare-fun b!407922 () Bool)

(declare-fun res!236014 () Bool)

(assert (=> b!407922 (=> (not res!236014) (not e!244901))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24633 (_ BitVec 32)) Bool)

(assert (=> b!407922 (= res!236014 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!407923 () Bool)

(declare-fun res!236016 () Bool)

(assert (=> b!407923 (=> (not res!236016) (not e!244901))))

(declare-fun arrayContainsKey!0 (array!24633 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!407923 (= res!236016 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!407924 () Bool)

(assert (=> b!407924 (= e!244901 e!244899)))

(declare-fun res!236013 () Bool)

(assert (=> b!407924 (=> (not res!236013) (not e!244899))))

(assert (=> b!407924 (= res!236013 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188708 mask!1025))))

(assert (=> b!407924 (= lt!188708 (array!24634 (store (arr!11763 _keys!709) i!563 k0!794) (size!12115 _keys!709)))))

(assert (= (and start!38978 res!236020) b!407913))

(assert (= (and b!407913 res!236021) b!407920))

(assert (= (and b!407920 res!236019) b!407922))

(assert (= (and b!407922 res!236014) b!407921))

(assert (= (and b!407921 res!236022) b!407914))

(assert (= (and b!407914 res!236017) b!407912))

(assert (= (and b!407912 res!236015) b!407915))

(assert (= (and b!407915 res!236018) b!407923))

(assert (= (and b!407923 res!236016) b!407924))

(assert (= (and b!407924 res!236013) b!407916))

(assert (= (and b!407917 condMapEmpty!17205) mapIsEmpty!17205))

(assert (= (and b!407917 (not condMapEmpty!17205)) mapNonEmpty!17205))

(get-info :version)

(assert (= (and mapNonEmpty!17205 ((_ is ValueCellFull!4851) mapValue!17205)) b!407919))

(assert (= (and b!407917 ((_ is ValueCellFull!4851) mapDefault!17205)) b!407918))

(assert (= start!38978 b!407917))

(declare-fun m!399381 () Bool)

(assert (=> mapNonEmpty!17205 m!399381))

(declare-fun m!399383 () Bool)

(assert (=> b!407921 m!399383))

(declare-fun m!399385 () Bool)

(assert (=> b!407916 m!399385))

(declare-fun m!399387 () Bool)

(assert (=> start!38978 m!399387))

(declare-fun m!399389 () Bool)

(assert (=> start!38978 m!399389))

(declare-fun m!399391 () Bool)

(assert (=> b!407913 m!399391))

(declare-fun m!399393 () Bool)

(assert (=> b!407924 m!399393))

(declare-fun m!399395 () Bool)

(assert (=> b!407924 m!399395))

(declare-fun m!399397 () Bool)

(assert (=> b!407922 m!399397))

(declare-fun m!399399 () Bool)

(assert (=> b!407923 m!399399))

(declare-fun m!399401 () Bool)

(assert (=> b!407915 m!399401))

(declare-fun m!399403 () Bool)

(assert (=> b!407912 m!399403))

(check-sat (not b!407922) (not b!407916) (not b!407912) (not b!407913) (not b!407924) (not b!407921) (not b!407923) (not start!38978) tp_is_empty!10389 (not mapNonEmpty!17205))
(check-sat)
